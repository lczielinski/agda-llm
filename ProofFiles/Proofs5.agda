module Proofs5 where

open import BuiltIn

+0= : (b : Nat) → b ≡ (b + 0)
+0= zero    = refl
+0= (suc b) = ?

*1=1 : (a : Nat) → a ≡ (a * 1)
*1=1 0 = refl
*1=1 (suc a) = ?