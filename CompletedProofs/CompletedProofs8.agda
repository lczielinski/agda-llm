module CompletedProofs8 where

open import BuiltIn

dist+ : (a b c : Nat) → a + (b + c) ≡ (a + b) + c
dist+ 0 b c = refl
dist+ (suc a) b c = cong (1 +_) (dist+ a b c)