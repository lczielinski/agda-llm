------------------------------------------------------------------------
-- The Agda standard library
--
-- This module is DEPRECATED.
------------------------------------------------------------------------

{-# OPTIONS --cubical-compatible --safe #-}

open import Relation.Binary.Bundles using (StrictTotalOrder)

module Data.AVL.NonEmpty
  {a ℓ₁ ℓ₂} (strictTotalOrder : StrictTotalOrder a ℓ₁ ℓ₂) where

{-# WARNING_ON_IMPORT
"Data.AVL.NonEmpty was deprecated in v1.4.
Use Data.Tree.AVL.NonEmpty instead."
#-}

open import Data.Tree.AVL.NonEmpty strictTotalOrder public
