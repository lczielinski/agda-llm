------------------------------------------------------------------------
-- The Agda standard library
--
-- This module is DEPRECATED.
------------------------------------------------------------------------

{-# OPTIONS --cubical-compatible --safe #-}

open import Relation.Binary.Bundles using (StrictTotalOrder)

module Data.AVL.Indexed
  {a ℓ₁ ℓ₂} (strictTotalOrder : StrictTotalOrder a ℓ₁ ℓ₂) where


{-# WARNING_ON_IMPORT
"Data.AVL.Indexed was deprecated in v1.4.
Use Data.Tree.AVL.Indexed instead."
#-}

open import Data.Tree.AVL.Indexed strictTotalOrder public
