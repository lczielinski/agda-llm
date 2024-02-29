module Proofs6 where

open import BuiltIn

n*0=0 : (n : Nat) → (n * 0) ≡ 0
n*0=0  0       = refl
n*0=0  (suc n) = ?