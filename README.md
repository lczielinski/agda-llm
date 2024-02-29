Idea: Use LLMs to guess proof holes in Agda.
1. Send current proof state to LLM (currently, GPT-3.5 Turbo).
2. Prompt it to complete the proof given the type header and base cases for pattern-matching.
3. Attempt to compile the completed proof. If it fails, try again, up to some bound (currently 100). 

`ProofFiles`: Easy arithmetic proofs for the LLM to try to complete.

`CompletedProofs`: Proofs that the LLM successfully completed.

Optimizations:
- Prompt LLM not to repeat its previous guess. This worked quite well.
- Send error message back to LLVM. This did not work so well because most proofs were one-shotted anyways, so there wasn't much to tell it besides "this didn't compile."

Evaluation and notes:
- Objectively, it didn't do so well, but didn't do so badly either.
- Was very good when I changed names of lemmas to confuse it. For example, it defined `<=` correctly just based on the base case when I replaced it with random characters, like `^*`. Also, it proved associativity of `+` when I called it `dist+`.
- It rarely tried to use library functions and instead tried to prove from scratch.
- For some reason, it literally could not prove `a = a * 1`, though it proved harder things (in my opinion).
- Agda has two "styles" of proofs: one-shotting terms (generally unreadable) and a more readable style of chaining equalities. The LLM never succeeded with the second style because it would have a minor error at some step. Possibly we could allow it to revise partially correct proofs in this style.