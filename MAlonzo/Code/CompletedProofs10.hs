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

module MAlonzo.Code.CompletedProofs10 where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.BuiltIn

-- CompletedProofs10.dist+
d_dist'43'_8 ::
  Integer -> Integer -> Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_dist'43'_8 v0 ~v1 ~v2 = du_dist'43'_8 v0
du_dist'43'_8 :: Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
du_dist'43'_8 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.BuiltIn.C_refl_84
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe MAlonzo.Code.BuiltIn.du_cong_96 (coe du_dist'43'_8 (coe v1)))
