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

module MAlonzo.Code.CompletedProofs1 where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.BuiltIn

-- CompletedProofs1.fst'
d_fst''_6 :: MAlonzo.Code.BuiltIn.T__'215'__12 -> AgdaAny
d_fst''_6 v0
  = case coe v0 of
      MAlonzo.Code.BuiltIn.C__'44'__18 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- CompletedProofs1.snd'
d_snd''_16 :: MAlonzo.Code.BuiltIn.T__'215'__12 -> AgdaAny
d_snd''_16 v0
  = case coe v0 of
      MAlonzo.Code.BuiltIn.C__'44'__18 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
