module Proofs12 where

open import BuiltIn
open import Arithmetic 

suc-help : (a b : Nat) → b + (a * b) ≡ (suc a) * b
suc-help a b = ?