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

module MAlonzo.Code.CompletedProofs2 where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.BuiltIn

-- CompletedProofs2.cong'
d_cong''_12 ::
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.BuiltIn.T__'8801'__78 ->
  MAlonzo.Code.BuiltIn.T__'8801'__78
d_cong''_12 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_cong''_12 v5
du_cong''_12 ::
  MAlonzo.Code.BuiltIn.T__'8801'__78 ->
  MAlonzo.Code.BuiltIn.T__'8801'__78
du_cong''_12 v0
  = coe seq (coe v0) (coe MAlonzo.Code.BuiltIn.C_refl_84)
-- CompletedProofs2.trans'
d_trans''_24 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.BuiltIn.T__'8801'__78 ->
  MAlonzo.Code.BuiltIn.T__'8801'__78 ->
  MAlonzo.Code.BuiltIn.T__'8801'__78
d_trans''_24 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_trans''_24 v4 v5
du_trans''_24 ::
  MAlonzo.Code.BuiltIn.T__'8801'__78 ->
  MAlonzo.Code.BuiltIn.T__'8801'__78 ->
  MAlonzo.Code.BuiltIn.T__'8801'__78
du_trans''_24 v0 v1
  = coe
      seq (coe v0)
      (coe seq (coe v1) (coe MAlonzo.Code.BuiltIn.C_refl_84))
-- CompletedProofs2.sym'
d_sym''_32 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.BuiltIn.T__'8801'__78 ->
  MAlonzo.Code.BuiltIn.T__'8801'__78
d_sym''_32 ~v0 ~v1 ~v2 v3 = du_sym''_32 v3
du_sym''_32 ::
  MAlonzo.Code.BuiltIn.T__'8801'__78 ->
  MAlonzo.Code.BuiltIn.T__'8801'__78
du_sym''_32 v0
  = coe seq (coe v0) (coe MAlonzo.Code.BuiltIn.C_refl_84)
