module Definitions where

open import BuiltIn
open import Arithmetic 

isPrime : Nat → Set
isPrime 1 = ⊥
isPrime n = (x : Nat) → (x ≡ n → ⊥) × (x div n) → x ≡ 1