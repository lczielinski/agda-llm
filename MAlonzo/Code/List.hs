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

module MAlonzo.Code.List where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.BuiltIn

-- List.List
d_List_4 a0 = ()
data T_List_4 = C_'91''93'_8 | C__'58''58'__10 AgdaAny T_List_4
-- List.notNil
d_notNil_16 :: () -> T_List_4 -> ()
d_notNil_16 = erased
-- List.length
d_length_22 :: () -> T_List_4 -> Integer
d_length_22 ~v0 v1 = du_length_22 v1
du_length_22 :: T_List_4 -> Integer
du_length_22 v0
  = case coe v0 of
      C_'91''93'_8 -> coe (0 :: Integer)
      C__'58''58'__10 v1 v2
        -> coe
             MAlonzo.Code.BuiltIn.d__'43'__184 (coe (1 :: Integer))
             (coe du_length_22 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- List.tail
d_tail_30 :: T_List_4 -> T_List_4
d_tail_30 v0
  = case coe v0 of
      C_'91''93'_8 -> coe v0
      C__'58''58'__10 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- List.head
d_head_40 ::
  () ->
  T_List_4 ->
  (MAlonzo.Code.BuiltIn.T__'8801'__78 ->
   MAlonzo.Code.BuiltIn.T_'8869'_2) ->
  AgdaAny
d_head_40 ~v0 v1 v2 = du_head_40 v1 v2
du_head_40 ::
  T_List_4 ->
  (MAlonzo.Code.BuiltIn.T__'8801'__78 ->
   MAlonzo.Code.BuiltIn.T_'8869'_2) ->
  AgdaAny
du_head_40 v0 v1
  = case coe v0 of
      C_'91''93'_8
        -> coe
             MAlonzo.Code.BuiltIn.du__'36'__376
             (\ v2 -> coe MAlonzo.Code.BuiltIn.du_absurd_6)
             (coe v1 (coe MAlonzo.Code.BuiltIn.C_refl_84))
      C__'58''58'__10 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- List.concat
d_concat_50 :: () -> T_List_4 -> T_List_4 -> T_List_4
d_concat_50 ~v0 v1 = du_concat_50 v1
du_concat_50 :: T_List_4 -> T_List_4 -> T_List_4
du_concat_50 v0
  = case coe v0 of
      C_'91''93'_8 -> coe (\ v1 -> v1)
      C__'58''58'__10 v1 v2
        -> coe
             (\ v3 -> coe C__'58''58'__10 (coe v1) (coe du_concat_50 v2 v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- List.concatNil
d_concatNil_62 ::
  () -> T_List_4 -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_concatNil_62 ~v0 ~v1 = du_concatNil_62
du_concatNil_62 :: MAlonzo.Code.BuiltIn.T__'8801'__78
du_concatNil_62 = coe MAlonzo.Code.BuiltIn.C_refl_84
-- List.listNotNil
d_listNotNil_70 ::
  () ->
  AgdaAny ->
  T_List_4 ->
  MAlonzo.Code.BuiltIn.T__'8801'__78 ->
  MAlonzo.Code.BuiltIn.T_'8869'_2
d_listNotNil_70 = erased
-- List.tailConcat=ConcatTail
d_tailConcat'61'ConcatTail_78 ::
  () ->
  T_List_4 ->
  T_List_4 ->
  (MAlonzo.Code.BuiltIn.T__'8801'__78 ->
   MAlonzo.Code.BuiltIn.T_'8869'_2) ->
  MAlonzo.Code.BuiltIn.T__'8801'__78
d_tailConcat'61'ConcatTail_78 ~v0 v1 ~v2 v3
  = du_tailConcat'61'ConcatTail_78 v1 v3
du_tailConcat'61'ConcatTail_78 ::
  T_List_4 ->
  (MAlonzo.Code.BuiltIn.T__'8801'__78 ->
   MAlonzo.Code.BuiltIn.T_'8869'_2) ->
  MAlonzo.Code.BuiltIn.T__'8801'__78
du_tailConcat'61'ConcatTail_78 v0 v1
  = case coe v0 of
      C_'91''93'_8
        -> coe
             MAlonzo.Code.BuiltIn.du__'36'__376
             (\ v2 -> coe MAlonzo.Code.BuiltIn.du_absurd_6)
             (coe v1 (coe MAlonzo.Code.BuiltIn.C_refl_84))
      C__'58''58'__10 v2 v3 -> coe MAlonzo.Code.BuiltIn.C_refl_84
      _ -> MAlonzo.RTE.mazUnreachableError
-- List.concatNotNil
d_concatNotNil_96 ::
  () ->
  T_List_4 ->
  AgdaAny ->
  T_List_4 ->
  MAlonzo.Code.BuiltIn.T__'8801'__78 ->
  MAlonzo.Code.BuiltIn.T_'8869'_2
d_concatNotNil_96 = erased
-- List.range
d_range_110 :: Integer -> T_List_4
d_range_110 v0
  = case coe v0 of
      0 -> coe C__'58''58'__10 (coe (0 :: Integer)) (coe C_'91''93'_8)
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe C__'58''58'__10 (coe v0) (coe d_range_110 (coe v1)))
-- List.listMap
d_listMap_118 ::
  () -> () -> (AgdaAny -> AgdaAny) -> T_List_4 -> T_List_4
d_listMap_118 ~v0 ~v1 v2 v3 = du_listMap_118 v2 v3
du_listMap_118 :: (AgdaAny -> AgdaAny) -> T_List_4 -> T_List_4
du_listMap_118 v0 v1
  = let v2 = coe C_'91''93'_8 in
    coe
      (case coe v1 of
         C__'58''58'__10 v3 v4
           -> coe
                C__'58''58'__10 (coe v0 v3) (coe du_listMap_118 (coe v0) (coe v4))
         _ -> coe v2)
-- List.isIn
d_isIn_128 :: () -> AgdaAny -> T_List_4 -> ()
d_isIn_128 = erased
-- List.notInNil
d_notInNil_144 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.BuiltIn.T_Σ_44 -> MAlonzo.Code.BuiltIn.T_'8869'_2
d_notInNil_144 = erased
-- List.stupid
d_stupid_160 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  T_List_4 ->
  T_List_4 ->
  MAlonzo.Code.BuiltIn.T__'8801'__78 ->
  MAlonzo.Code.BuiltIn.T__'8801'__78
d_stupid_160 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_stupid_160 v5
du_stupid_160 ::
  MAlonzo.Code.BuiltIn.T__'8801'__78 ->
  MAlonzo.Code.BuiltIn.T__'8801'__78
du_stupid_160 v0
  = coe seq (coe v0) (coe MAlonzo.Code.BuiltIn.C_refl_84)
-- List.notHeadThenInRest
d_notHeadThenInRest_170 ::
  () ->
  T_List_4 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.BuiltIn.T__'215'__12 -> MAlonzo.Code.BuiltIn.T_Σ_44
d_notHeadThenInRest_170 ~v0 ~v1 ~v2 ~v3 v4
  = du_notHeadThenInRest_170 v4
du_notHeadThenInRest_170 ::
  MAlonzo.Code.BuiltIn.T__'215'__12 -> MAlonzo.Code.BuiltIn.T_Σ_44
du_notHeadThenInRest_170 v0
  = case coe v0 of
      MAlonzo.Code.BuiltIn.C__'44'__18 v1 v2
        -> coe
             MAlonzo.Code.BuiltIn.C__'44'__52
             (coe d_tail_30 (coe MAlonzo.Code.BuiltIn.d_car_58 (coe v1)))
             (coe
                MAlonzo.Code.BuiltIn.C__'44'__52
                (coe
                   MAlonzo.Code.BuiltIn.d_car_58
                   (coe MAlonzo.Code.BuiltIn.d_cdr_70 (coe v1)))
                (coe
                   MAlonzo.Code.BuiltIn.du_trans_108
                   (coe
                      MAlonzo.Code.BuiltIn.du_cong_96
                      (coe
                         MAlonzo.Code.BuiltIn.d_cdr_70
                         (coe MAlonzo.Code.BuiltIn.d_cdr_70 (coe v1))))
                   (coe
                      du_tailConcat'61'ConcatTail_78
                      (coe MAlonzo.Code.BuiltIn.d_car_58 (coe v1)) erased)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- List.singletonIsItself
d_singletonIsItself_200 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.BuiltIn.T_Either_282) ->
  MAlonzo.Code.BuiltIn.T_Σ_44 -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_singletonIsItself_200 ~v0 v1 v2 v3 ~v4
  = du_singletonIsItself_200 v1 v2 v3
du_singletonIsItself_200 ::
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.BuiltIn.T_Either_282) ->
  MAlonzo.Code.BuiltIn.T__'8801'__78
du_singletonIsItself_200 v0 v1 v2
  = coe
      MAlonzo.Code.BuiltIn.du_cases_298 (coe v2 v0 v1) (coe (\ v3 -> v3))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.BuiltIn.du__'36'__376
              (\ v4 -> coe MAlonzo.Code.BuiltIn.du_absurd_6) erased))
