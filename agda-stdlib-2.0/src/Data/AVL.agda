------------------------------------------------------------------------
-- The Agda standard library
--
-- This module is DEPRECATED.
------------------------------------------------------------------------

{-# OPTIONS --cubical-compatible --safe #-}

open import Relation.Binary.Bundles using (StrictTotalOrder)

module Data.AVL
  {a ℓ₁ ℓ₂} (strictTotalOrder : StrictTotalOrder a ℓ₁ ℓ₂)
  where

{-# WARNING_ON_IMPORT
"Data.AVL was deprecated in v1.4.
Use Data.Tree.AVL instead."
#-}

open import Data.Tree.AVL strictTotalOrder public
