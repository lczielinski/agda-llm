------------------------------------------------------------------------
-- The Agda standard library
--
-- Interleavings of lists using propositional equality
------------------------------------------------------------------------

{-# OPTIONS --cubical-compatible --safe #-}

module Data.List.Relation.Ternary.Interleaving.Propositional {a} {A : Set a} where

open import Data.List.Base as List using (List; []; _∷_; _++_)
open import Data.List.Relation.Binary.Permutation.Propositional as Perm using (_↭_)
open import Data.List.Relation.Binary.Permutation.Propositional.Properties using (shift)
import Data.List.Relation.Ternary.Interleaving.Setoid as General
open import Relation.Binary.PropositionalEquality.Core using (refl)
open import Relation.Binary.PropositionalEquality.Properties using (setoid)
open Perm.PermutationReasoning

------------------------------------------------------------------------
-- Re-export the basic combinators

open General hiding (Interleaving) public

------------------------------------------------------------------------
-- Definition

Interleaving : List A → List A → List A → Set a
Interleaving = General.Interleaving (setoid A)

pattern consˡ xs = refl ∷ˡ xs
pattern consʳ xs = refl ∷ʳ xs

------------------------------------------------------------------------
-- New combinators

toPermutation : ∀ {l r as} → Interleaving l r as → as ↭ l ++ r
toPermutation []         = Perm.refl
toPermutation (consˡ sp) = Perm.prep _ (toPermutation sp)
toPermutation {l} {r ∷ rs} {a ∷ as} (consʳ sp) = begin
  a ∷ as       ↭⟨ Perm.prep a (toPermutation sp) ⟩
  a ∷ l ++ rs  ↭⟨ Perm.↭-sym (shift a l rs) ⟩
  l ++ a ∷ rs  ∎
