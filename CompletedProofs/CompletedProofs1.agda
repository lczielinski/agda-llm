module CompletedProofs1 where

open import BuiltIn

fst' : {A B : Set} → A × B → A
fst' (a , b) = a

snd' : {A B : Set} → A × B → B
snd' (a , b) = b
