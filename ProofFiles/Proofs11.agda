module Proofs11 where

open import BuiltIn
open import Arithmetic 

assoc-flip' : (a b c : Nat) → a + (b + c) ≡ b + (a + c)
assoc-flip' a b c = ?