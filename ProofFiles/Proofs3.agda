module Proofs3 where

open import BuiltIn

car' : {A : Set} {B : A → Set} → Σ A B → A
car' (a , b) = ?

cdr' : {A : Set} {B : A → Set} → (a : Σ A B) → B (car a)
cdr' (a , b) = ?
