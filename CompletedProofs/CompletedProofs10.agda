module CompletedProofs10 where

open import BuiltIn

dist+ : (a b c : Nat) → a + (b + c) ≡ (a + b) + c
dist+ 0 b c = refl
dist+ (suc a) b c = cong suc (dist+ a b c)