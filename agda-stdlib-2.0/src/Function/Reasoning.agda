------------------------------------------------------------------------
-- The Agda standard library
--
-- A module used for creating function pipelines, see
-- README.Function.Reasoning for examples
------------------------------------------------------------------------

{-# OPTIONS --cubical-compatible --safe #-}

module Function.Reasoning where

open import Function.Base using (_∋_)

-- Need to give _∋_ a new name as syntax cannot contain underscores
infixl 0 ∋-syntax
∋-syntax = _∋_

-- Create ∶ syntax
syntax ∋-syntax A a = a ∶ A

-- Export pipeline functions
open import Function.Base public using (_|>_; _|>′_)
