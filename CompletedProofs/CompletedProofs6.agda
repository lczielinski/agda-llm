module CompletedProofs6 where

open import BuiltIn

data _^*_ : Nat → Nat → Set where
  z^*n : (n : Nat) → zero ^* n
  s^*s : (n m : Nat) → n ^* m → suc n ^* suc m