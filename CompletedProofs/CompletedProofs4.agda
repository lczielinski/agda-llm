module CompletedProofs4 where

open import BuiltIn

_+'_ : Nat → Nat → Nat
zero    +' y = y
(suc x) +' y = suc (x +' y)

_*'_ : Nat → Nat → Nat
zero  *' m = 0
suc n *' m = m +' (n *' m)