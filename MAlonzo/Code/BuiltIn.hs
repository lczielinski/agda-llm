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

module MAlonzo.Code.BuiltIn where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text

-- BuiltIn.⊥
d_'8869'_2 = ()
data T_'8869'_2
-- BuiltIn.absurd
d_absurd_6 :: () -> T_'8869'_2 -> AgdaAny
d_absurd_6 ~v0 ~v1 = du_absurd_6
du_absurd_6 :: AgdaAny
du_absurd_6 = MAlonzo.RTE.mazUnreachableError
-- BuiltIn._×_
d__'215'__12 a0 a1 = ()
data T__'215'__12 = C__'44'__18 AgdaAny AgdaAny
-- BuiltIn.fst
d_fst_24 :: T__'215'__12 -> AgdaAny
d_fst_24 v0
  = case coe v0 of
      C__'44'__18 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- BuiltIn.snd
d_snd_34 :: T__'215'__12 -> AgdaAny
d_snd_34 v0
  = case coe v0 of
      C__'44'__18 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- BuiltIn.Σ
d_Σ_44 a0 a1 = ()
data T_Σ_44 = C__'44'__52 AgdaAny AgdaAny
-- BuiltIn.car
d_car_58 :: T_Σ_44 -> AgdaAny
d_car_58 v0
  = case coe v0 of
      C__'44'__52 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- BuiltIn.cdr
d_cdr_70 :: T_Σ_44 -> AgdaAny
d_cdr_70 v0
  = case coe v0 of
      C__'44'__52 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- BuiltIn._≡_
d__'8801'__78 a0 a1 a2 = ()
data T__'8801'__78 = C_refl_84
-- BuiltIn.cong
d_cong_96 ::
  () ->
  () ->
  AgdaAny ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> T__'8801'__78 -> T__'8801'__78
d_cong_96 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_cong_96 v5
du_cong_96 :: T__'8801'__78 -> T__'8801'__78
du_cong_96 v0 = coe seq (coe v0) (coe C_refl_84)
-- BuiltIn.trans
d_trans_108 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> T__'8801'__78 -> T__'8801'__78 -> T__'8801'__78
d_trans_108 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_trans_108 v4 v5
du_trans_108 :: T__'8801'__78 -> T__'8801'__78 -> T__'8801'__78
du_trans_108 v0 v1
  = coe seq (coe v0) (coe seq (coe v1) (coe C_refl_84))
-- BuiltIn.sym
d_sym_116 ::
  () -> AgdaAny -> AgdaAny -> T__'8801'__78 -> T__'8801'__78
d_sym_116 ~v0 ~v1 ~v2 v3 = du_sym_116 v3
du_sym_116 :: T__'8801'__78 -> T__'8801'__78
du_sym_116 v0 = coe seq (coe v0) (coe C_refl_84)
-- BuiltIn.replace
d_replace_126 ::
  () ->
  AgdaAny ->
  AgdaAny -> T__'8801'__78 -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny
d_replace_126 ~v0 ~v1 ~v2 v3 ~v4 v5 = du_replace_126 v3 v5
du_replace_126 :: T__'8801'__78 -> AgdaAny -> AgdaAny
du_replace_126 v0 v1 = coe seq (coe v0) (coe v1)
-- BuiltIn.begin_
d_begin__138 :: T__'8801'__78 -> T__'8801'__78
d_begin__138 v0 = coe v0
-- BuiltIn._∎
d__'8718'_146 :: () -> AgdaAny -> T__'8801'__78
d__'8718'_146 ~v0 ~v1 = du__'8718'_146
du__'8718'_146 :: T__'8801'__78
du__'8718'_146 = coe C_refl_84
-- BuiltIn._=⟨_⟩_
d__'61''10216'_'10217'__158 ::
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> T__'8801'__78 -> T__'8801'__78 -> T__'8801'__78
d__'61''10216'_'10217'__158 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du__'61''10216'_'10217'__158 v4 v5
du__'61''10216'_'10217'__158 ::
  T__'8801'__78 -> T__'8801'__78 -> T__'8801'__78
du__'61''10216'_'10217'__158 v0 v1
  = coe du_trans_108 (coe v0) (coe v1)
-- BuiltIn._=⟨⟩_
d__'61''10216''10217'__172 ::
  () -> AgdaAny -> AgdaAny -> T__'8801'__78 -> T__'8801'__78
d__'61''10216''10217'__172 ~v0 ~v1 ~v2 v3
  = du__'61''10216''10217'__172 v3
du__'61''10216''10217'__172 :: T__'8801'__78 -> T__'8801'__78
du__'61''10216''10217'__172 v0
  = coe du__'61''10216'_'10217'__158 (coe C_refl_84) (coe v0)
-- BuiltIn.Nat
d_Nat_178 = ()
data T_Nat_178 = C_zero_180 | C_suc_182 Integer
-- BuiltIn._+_
d__'43'__184 :: Integer -> Integer -> Integer
d__'43'__184 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                addInt (coe (1 :: Integer)) (coe d__'43'__184 (coe v2) (coe v1)))
-- BuiltIn._-_
d__'45'__192 :: Integer -> Integer -> Integer
d__'45'__192 v0 v1
  = case coe v1 of
      0 -> coe v0
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (case coe v0 of
                0 -> coe (0 :: Integer)
                _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                     coe (coe d__'45'__192 (coe v3) (coe v2)))
-- BuiltIn._*_
d__'42'__202 :: Integer -> Integer -> Integer
d__'42'__202 v0 v1
  = case coe v0 of
      0 -> coe (0 :: Integer)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe d__'43'__184 (coe d__'42'__202 (coe v2) (coe v1)) (coe v1))
-- BuiltIn._≤_
d__'8804'__210 a0 a1 = ()
data T__'8804'__210
  = C_z'8804'n_214 | C_s'8804's_220 T__'8804'__210
-- BuiltIn.+Id
d_'43'Id_226 :: Integer -> Integer -> T__'8801'__78
d_'43'Id_226 ~v0 ~v1 = du_'43'Id_226
du_'43'Id_226 :: T__'8801'__78
du_'43'Id_226
  = coe
      du_sym_116 (coe du__'61''10216''10217'__172 (coe du__'8718'_146))
-- BuiltIn.difference
d_difference_238 :: Integer -> Integer -> T__'8804'__210 -> T_Σ_44
d_difference_238 v0 v1 v2
  = case coe v2 of
      C_z'8804'n_214 -> coe C__'44'__52 (coe v1) (coe C_refl_84)
      C_s'8804's_220 v5
        -> let v6 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (let v7 = subInt (coe v1) (coe (1 :: Integer)) in
              coe
                (coe
                   C__'44'__52 (coe d_k_254 (coe v6) (coe v7) (coe v5))
                   (coe d_eqProof_256 (coe v6) (coe v7) (coe v5))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- BuiltIn._.predDiff
d_predDiff_252 :: Integer -> Integer -> T__'8804'__210 -> T_Σ_44
d_predDiff_252 v0 v1 v2
  = coe d_difference_238 (coe v0) (coe v1) (coe v2)
-- BuiltIn._.k
d_k_254 :: Integer -> Integer -> T__'8804'__210 -> Integer
d_k_254 v0 v1 v2
  = coe d_car_58 (coe d_predDiff_252 (coe v0) (coe v1) (coe v2))
-- BuiltIn._.eqProof
d_eqProof_256 ::
  Integer -> Integer -> T__'8804'__210 -> T__'8801'__78
d_eqProof_256 v0 v1 v2
  = coe
      du__'61''10216'_'10217'__158 (coe du_'43'Id_226)
      (coe
         du__'61''10216'_'10217'__158
         (coe
            du_cong_96
            (coe d_cdr_70 (coe d_predDiff_252 (coe v0) (coe v1) (coe v2))))
         (coe du__'8718'_146))
-- BuiltIn._div_
d__div__258 :: Integer -> Integer -> ()
d__div__258 = erased
-- BuiltIn.0!=Sn
d_0'33''61'Sn_268 :: Integer -> T__'8801'__78 -> T_'8869'_2
d_0'33''61'Sn_268 = erased
-- BuiltIn.Sn!=0
d_Sn'33''61'0_274 :: Integer -> T__'8801'__78 -> T_'8869'_2
d_Sn'33''61'0_274 = erased
-- BuiltIn.Either
d_Either_282 a0 a1 = ()
data T_Either_282 = C_left_288 AgdaAny | C_right_290 AgdaAny
-- BuiltIn.cases
d_cases_298 ::
  () ->
  () ->
  () ->
  T_Either_282 ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny
d_cases_298 ~v0 ~v1 ~v2 v3 v4 v5 = du_cases_298 v3 v4 v5
du_cases_298 ::
  T_Either_282 ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny
du_cases_298 v0 v1 v2
  = case coe v0 of
      C_left_288 v3 -> coe v1 v3
      C_right_290 v3 -> coe v2 v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- BuiltIn.Maybe
d_Maybe_310 a0 = ()
data T_Maybe_310 = C_just_314 AgdaAny | C_nothing_316
-- BuiltIn.indMaybe
d_indMaybe_322 ::
  () -> () -> (AgdaAny -> AgdaAny) -> T_Maybe_310 -> T_Maybe_310
d_indMaybe_322 ~v0 ~v1 v2 v3 = du_indMaybe_322 v2 v3
du_indMaybe_322 ::
  (AgdaAny -> AgdaAny) -> T_Maybe_310 -> T_Maybe_310
du_indMaybe_322 v0 v1
  = case coe v1 of
      C_just_314 v2 -> coe C_just_314 (coe v0 v2)
      C_nothing_316 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- BuiltIn.Fin
d_Fin_330 a0 a1 = ()
data T_Fin_330 = C_stop_334 | C_body_338 AgdaAny T_Fin_330
-- BuiltIn.finMap
d_finMap_348 ::
  (Integer -> ()) ->
  (Integer -> ()) ->
  Integer ->
  (Integer -> AgdaAny -> AgdaAny) -> T_Fin_330 -> T_Fin_330
d_finMap_348 ~v0 ~v1 v2 v3 v4 = du_finMap_348 v2 v3 v4
du_finMap_348 ::
  Integer ->
  (Integer -> AgdaAny -> AgdaAny) -> T_Fin_330 -> T_Fin_330
du_finMap_348 v0 v1 v2
  = case coe v2 of
      C_stop_334 -> coe v2
      C_body_338 v4 v5
        -> let v6 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                C_body_338 (coe v1 v6 v4)
                (coe du_finMap_348 (coe v6) (coe v1) (coe v5)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- BuiltIn.id
d_id_360 :: () -> AgdaAny -> AgdaAny
d_id_360 ~v0 v1 = du_id_360 v1
du_id_360 :: AgdaAny -> AgdaAny
du_id_360 v0 = coe v0
-- BuiltIn.const
d_const_368 :: () -> () -> AgdaAny -> AgdaAny -> AgdaAny
d_const_368 ~v0 ~v1 v2 ~v3 = du_const_368 v2
du_const_368 :: AgdaAny -> AgdaAny
du_const_368 v0 = coe v0
-- BuiltIn._$_
d__'36'__376 ::
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'36'__376 ~v0 ~v1 v2 v3 = du__'36'__376 v2 v3
du__'36'__376 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'36'__376 v0 v1 = coe v0 v1
-- BuiltIn._∘_
d__'8728'__388 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'8728'__388 ~v0 ~v1 ~v2 v3 v4 v5 = du__'8728'__388 v3 v4 v5
du__'8728'__388 ::
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'8728'__388 v0 v1 v2 = coe v0 (coe v1 v2)
-- BuiltIn.dec=
d_dec'61'_398 :: () -> ()
d_dec'61'_398 = erased
-- BuiltIn.sub1
d_sub1_406 :: Integer -> Integer
d_sub1_406 v0
  = case coe v0 of
      0 -> coe (0 :: Integer)
      _ -> coe subInt (coe v0) (coe (1 :: Integer))
-- BuiltIn.natDec
d_natDec_414 :: Integer -> Integer -> T_Either_282
d_natDec_414 v0 v1
  = case coe v0 of
      0 -> case coe v1 of
             0 -> coe C_left_288 (coe C_refl_84)
             _ -> coe du__'36'__376 (coe C_right_290) erased
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe du__'36'__376 (coe C_right_290) erased
                _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (coe
                          du_cases_298 (coe d_natDec_414 (coe v2) (coe v3))
                          (coe du__'8728'__388 (coe C_left_288) (coe du_cong_96))
                          (coe
                             (\ v4 ->
                                coe
                                  du__'36'__376 (coe C_right_290)
                                  (coe
                                     (\ v5 ->
                                        coe du__'36'__376 (coe v4) (coe du_cong_96 (coe v5))))))))
