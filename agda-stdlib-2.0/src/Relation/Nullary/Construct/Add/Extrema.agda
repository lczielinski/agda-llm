------------------------------------------------------------------------
-- The Agda standard library
--
-- Notation for freely adding extrema to any set
------------------------------------------------------------------------

{-# OPTIONS --cubical-compatible --safe #-}

module Relation.Nullary.Construct.Add.Extrema where

open import Relation.Binary.PropositionalEquality.Core using (_≡_; refl)
open import Relation.Nullary.Construct.Add.Infimum  as Infimum  using (_₋)
open import Relation.Nullary.Construct.Add.Supremum as Supremum using (_⁺)

------------------------------------------------------------------------
-- Definition

_± : ∀ {a} → Set a → Set a
A ± = A ₋ ⁺

pattern ⊥±    = Supremum.[ Infimum.⊥₋ ]
pattern [_] k = Supremum.[ Infimum.[ k ] ]
pattern ⊤±    = Supremum.⊤⁺

------------------------------------------------------------------------
-- Properties

[_]-injective : ∀ {a} {A : Set a} {k l : A} → [ k ] ≡ [ l ] → k ≡ l
[_]-injective refl = refl
