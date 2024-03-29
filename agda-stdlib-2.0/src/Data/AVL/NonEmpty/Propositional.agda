------------------------------------------------------------------------
-- The Agda standard library
--
-- This module is DEPRECATED.
------------------------------------------------------------------------

{-# OPTIONS --cubical-compatible --safe #-}

open import Relation.Binary.Core using (Rel)
open import Relation.Binary.Structures using (IsStrictTotalOrder)
open import Relation.Binary.Bundles using (StrictTotalOrder)
open import Relation.Binary.PropositionalEquality using (_≡_; refl; subst)

module Data.AVL.NonEmpty.Propositional
  {k r} {Key : Set k} {_<_ : Rel Key r}
  (isStrictTotalOrder : IsStrictTotalOrder _≡_ _<_) where

{-# WARNING_ON_IMPORT
"Data.AVL.NonEmpty.Propositional was deprecated in v1.4.
Use Data.Tree.AVL.NonEmpty.Propositonal instead."
#-}

open import Data.Tree.AVL.NonEmpty.Propositional isStrictTotalOrder public
