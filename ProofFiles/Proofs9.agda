module Proofs9 where

open import BuiltIn

suc+=+suc : (a b : Nat) → suc (a + b) ≡ (a + (suc b))
suc+=+suc 0       b = refl
suc+=+suc (suc a) b = ?