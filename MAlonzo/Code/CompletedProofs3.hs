{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE EmptyCase #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

{-# OPTIONS_GHC -Wno-overlapping-patterns #-}

module MAlonzo.Code.CompletedProofs3 where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.BuiltIn

-- CompletedProofs3.car'
d_car''_6 :: MAlonzo.Code.BuiltIn.T_Σ_44 -> AgdaAny
d_car''_6 v0
  = case coe v0 of
      MAlonzo.Code.BuiltIn.C__'44'__52 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- CompletedProofs3.cdr'
d_cdr''_18 :: MAlonzo.Code.BuiltIn.T_Σ_44 -> AgdaAny
d_cdr''_18 v0
  = case coe v0 of
      MAlonzo.Code.BuiltIn.C__'44'__52 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
