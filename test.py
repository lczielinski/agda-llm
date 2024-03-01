from openai import OpenAI
import os
import subprocess
import re

client = OpenAI(api_key="")

for i in range(13, 14):
    fileName = "ProofFiles/Proofs" + str(i) + ".agda"
    with open(fileName, "r") as file:
        proofs = file.read()

    while proofs.find("?") != -1:
        index = proofs.find("?")
        previousAttempt = ""
        for j in range(100): 
            prompt = "Complete this Agda proof from scratch. No comments, no explanation."
            if not previousAttempt == "":
                prompt += " Don't use \"" + previousAttempt + "\""
            completion = client.chat.completions.create(
                model="gpt-3.5-turbo",
                messages=[
                    {"role": "system", "content": prompt},
                    {"role": "user", "content": proofs[:index]}
                ]   
            ).choices[0].message.content
            s = re.search(r"\`\`\`agda.+\`\`\`", completion)
            if s:
                completion = s[0]
            if " = " in completion:
                completion = completion[completion.index(" = ") + 3:]
            completion = completion.replace("`", "").replace("agda", "").strip()
            previousAttempt = completion

            proofCompletion = proofs[:index] + completion
            fileName = "CompletedProofs" + str(i) + ".agda"
            proofCompletion = proofCompletion.replace("module Proofs" + str(i), 
                "module CompletedProofs" + str(i))
            with open(fileName, "w") as file:
                file.write(proofCompletion)

            # Try to compile Agda
            output = subprocess.run(["/Users/laurazielinski/.local/bin/agda --no-main --compile " + fileName], 
                shell=True, capture_output=True).stdout.decode("utf-8").split("\n")
            os.remove(fileName)
            try: os.remove(fileName + "i")
            except OSError: pass

            if "Calling:" in output[-2]: # Success
                proofs = proofCompletion + proofs[index + 1:]
                with open("CompletedProofs/" + fileName, "w") as file:
                    file.write(proofs)
                break
            else:
                print(completion)
        else:
            break
