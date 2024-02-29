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

module MAlonzo.Code.Arithmetic where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.BuiltIn
import qualified MAlonzo.Code.List

-- Arithmetic.0not1
d_0not1_2 ::
  MAlonzo.Code.BuiltIn.T__'8801'__78 ->
  MAlonzo.Code.BuiltIn.T_'8869'_2
d_0not1_2 = erased
-- Arithmetic.1not0
d_1not0_4 ::
  MAlonzo.Code.BuiltIn.T__'8801'__78 ->
  MAlonzo.Code.BuiltIn.T_'8869'_2
d_1not0_4 = erased
-- Arithmetic.sucNot0
d_sucNot0_8 ::
  Integer ->
  MAlonzo.Code.BuiltIn.T__'8801'__78 ->
  MAlonzo.Code.BuiltIn.T_'8869'_2
d_sucNot0_8 = erased
-- Arithmetic.+2
d_'43'2_12 :: Integer -> Integer
d_'43'2_12
  = coe
      MAlonzo.Code.BuiltIn.du__'8728'__388
      (coe (\ v0 -> addInt (coe (1 :: Integer)) (coe v0)))
      (coe (\ v0 -> addInt (coe (1 :: Integer)) (coe v0)))
-- Arithmetic.+1=
d_'43'1'61'_16 :: Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_'43'1'61'_16 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.BuiltIn.C_refl_84
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.BuiltIn.du_sym_116
                (coe
                   MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                   (coe
                      MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                      (coe
                         MAlonzo.Code.BuiltIn.du_cong_96
                         (coe
                            MAlonzo.Code.BuiltIn.du_sym_116 (coe d_'43'1'61'_16 (coe v1))))
                      (coe MAlonzo.Code.BuiltIn.du__'8718'_146))))
-- Arithmetic.+0=
d_'43'0'61'_22 :: Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_'43'0'61'_22 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.BuiltIn.C_refl_84
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe MAlonzo.Code.BuiltIn.du_cong_96 (coe d_'43'0'61'_22 (coe v1)))
-- Arithmetic.*1=1
d_'42'1'61'1_28 :: Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_'42'1'61'1_28 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.BuiltIn.C_refl_84
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.BuiltIn.du_sym_116
                (coe
                   MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                   (coe
                      MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                      (coe
                         MAlonzo.Code.BuiltIn.du_sym_116
                         (coe
                            d_'43'1'61'_16
                            (coe
                               MAlonzo.Code.BuiltIn.d__'42'__202 (coe v1) (coe (1 :: Integer)))))
                      (coe
                         MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                         (coe
                            MAlonzo.Code.BuiltIn.du_cong_96
                            (coe
                               MAlonzo.Code.BuiltIn.du_sym_116 (coe d_'42'1'61'1_28 (coe v1))))
                         (coe MAlonzo.Code.BuiltIn.du__'8718'_146)))))
-- Arithmetic.*1=
d_'42'1'61'_34 :: Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_'42'1'61'_34 = coe d_'42'1'61'1_28
-- Arithmetic.n*0=0
d_n'42'0'61'0_38 :: Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_n'42'0'61'0_38 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.BuiltIn.C_refl_84
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.BuiltIn.du__'36'__376
                (coe MAlonzo.Code.BuiltIn.du_cong_96)
                (coe d_n'42'0'61'0_38 (coe v1)))
-- Arithmetic.suc+=+suc
d_suc'43''61''43'suc_48 ::
  Integer -> Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_suc'43''61''43'suc_48 v0 ~v1 = du_suc'43''61''43'suc_48 v0
du_suc'43''61''43'suc_48 ::
  Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
du_suc'43''61''43'suc_48 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.BuiltIn.C_refl_84
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.BuiltIn.du_cong_96
                (coe du_suc'43''61''43'suc_48 (coe v1)))
-- Arithmetic.comm+
d_comm'43'_60 ::
  Integer -> Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_comm'43'_60 v0
  = case coe v0 of
      0 -> coe d_'43'0'61'_22
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                (\ v2 ->
                   coe
                     MAlonzo.Code.BuiltIn.du__'36'__376
                     (coe
                        MAlonzo.Code.BuiltIn.du_trans_108
                        (coe
                           MAlonzo.Code.BuiltIn.du__'36'__376
                           (coe MAlonzo.Code.BuiltIn.du_cong_96) (coe d_comm'43'_60 v1 v2)))
                     (coe du_suc'43''61''43'suc_48 (coe v2))))
-- Arithmetic.dist+
d_dist'43'_72 ::
  Integer -> Integer -> Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_dist'43'_72 v0 ~v1 ~v2 = du_dist'43'_72 v0
du_dist'43'_72 :: Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
du_dist'43'_72 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.BuiltIn.C_refl_84
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                (coe
                   MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                   (coe MAlonzo.Code.BuiltIn.du_cong_96 (coe du_dist'43'_72 (coe v1)))
                   (coe
                      MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                      (coe MAlonzo.Code.BuiltIn.C_refl_84))))
-- Arithmetic.assoc+
d_assoc'43'_90 ::
  Integer -> Integer -> Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_assoc'43'_90 v0 v1 ~v2 = du_assoc'43'_90 v0 v1
du_assoc'43'_90 ::
  Integer -> Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
du_assoc'43'_90 v0 v1
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
             (coe
                MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                (coe MAlonzo.Code.BuiltIn.du_cong_96 (coe d_'43'0'61'_22 (coe v0)))
                (coe MAlonzo.Code.BuiltIn.du__'8718'_146))
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                (coe
                   MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                   (coe
                      MAlonzo.Code.BuiltIn.du_sym_116
                      (coe du_suc'43''61''43'suc_48 (coe v0)))
                   (coe
                      MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                      (coe
                         MAlonzo.Code.BuiltIn.du_cong_96
                         (coe du_assoc'43'_90 (coe v0) (coe v2)))
                      (coe
                         MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                         (coe
                            MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                            (coe
                               MAlonzo.Code.BuiltIn.du_cong_96
                               (coe du_suc'43''61''43'suc_48 (coe v0)))
                            (coe MAlonzo.Code.BuiltIn.du__'8718'_146))))))
-- Arithmetic.assoc-flip
d_assoc'45'flip_112 ::
  Integer -> Integer -> Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_assoc'45'flip_112 v0 v1 ~v2 = du_assoc'45'flip_112 v0 v1
du_assoc'45'flip_112 ::
  Integer -> Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
du_assoc'45'flip_112 v0 v1
  = coe
      MAlonzo.Code.BuiltIn.du_trans_108
      (coe du_assoc'43'_90 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.BuiltIn.du_trans_108
         (coe MAlonzo.Code.BuiltIn.du_cong_96 (coe d_comm'43'_60 v0 v1))
         (coe
            MAlonzo.Code.BuiltIn.du_sym_116
            (coe du_assoc'43'_90 (coe v1) (coe v0))))
-- Arithmetic.suc-help
d_suc'45'help_126 ::
  Integer -> Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_suc'45'help_126 v0 v1
  = coe
      MAlonzo.Code.BuiltIn.du_sym_116
      (coe
         MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
         (coe
            MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
            (coe
               d_comm'43'_60 (MAlonzo.Code.BuiltIn.d__'42'__202 (coe v0) (coe v1))
               v1)
            (coe MAlonzo.Code.BuiltIn.du__'8718'_146)))
-- Arithmetic.suc-rev
d_suc'45'rev_136 ::
  Integer -> Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_suc'45'rev_136 ~v0 ~v1 = du_suc'45'rev_136
du_suc'45'rev_136 :: MAlonzo.Code.BuiltIn.T__'8801'__78
du_suc'45'rev_136
  = coe
      MAlonzo.Code.BuiltIn.du_sym_116
      (coe
         MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
         (coe MAlonzo.Code.BuiltIn.du__'8718'_146))
-- Arithmetic.*suc=+*
d_'42'suc'61''43''42'_146 ::
  Integer -> Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_'42'suc'61''43''42'_146 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.BuiltIn.C_refl_84
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.BuiltIn.du_sym_116
                (coe
                   MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                   (coe
                      MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                      (coe
                         d_comm'43'_60
                         (MAlonzo.Code.BuiltIn.d__'42'__202
                            (coe v2) (coe addInt (coe (1 :: Integer)) (coe v1)))
                         (addInt (coe (1 :: Integer)) (coe v1)))
                      (coe
                         MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                         (coe
                            MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                            (coe
                               MAlonzo.Code.BuiltIn.du_cong_96
                               (coe
                                  MAlonzo.Code.BuiltIn.du_sym_116
                                  (coe d_'42'suc'61''43''42'_146 (coe v2) (coe v1))))
                            (coe
                               MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                               (coe
                                  MAlonzo.Code.BuiltIn.du_cong_96
                                  (coe du_assoc'45'flip_112 (coe v1) (coe v2)))
                               (coe
                                  MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                                  (coe du_suc'45'rev_136)
                                  (coe
                                     MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                                     (coe
                                        MAlonzo.Code.BuiltIn.du_cong_96
                                        (coe d_suc'45'help_126 (coe v2) (coe v1)))
                                     (coe MAlonzo.Code.BuiltIn.du__'8718'_146)))))))))
-- Arithmetic.comm*
d_comm'42'_162 ::
  Integer -> Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_comm'42'_162 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
             (coe
                MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                (coe
                   MAlonzo.Code.BuiltIn.du__'36'__376
                   (coe MAlonzo.Code.BuiltIn.du_sym_116)
                   (coe d_n'42'0'61'0_38 (coe v1)))
                (coe MAlonzo.Code.BuiltIn.du__'8718'_146))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                (coe
                   MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                   (coe
                      MAlonzo.Code.BuiltIn.du_cong_96
                      (coe d_comm'42'_162 (coe v2) (coe v1)))
                   (coe
                      MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                      (coe
                         d_comm'43'_60 (MAlonzo.Code.BuiltIn.d__'42'__202 (coe v1) (coe v2))
                         v1)
                      (coe
                         MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                         (coe d_'42'suc'61''43''42'_146 (coe v1) (coe v2))
                         (coe MAlonzo.Code.BuiltIn.du__'8718'_146)))))
-- Arithmetic.distr+*
d_distr'43''42'_178 ::
  Integer -> Integer -> Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_distr'43''42'_178 v0 v1 v2
  = case coe v0 of
      0 -> coe MAlonzo.Code.BuiltIn.C_refl_84
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                (coe
                   MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                   (coe
                      MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                      (coe
                         MAlonzo.Code.BuiltIn.du_cong_96
                         (coe d_distr'43''42'_178 (coe v3) (coe v1) (coe v2)))
                      (coe
                         MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                         (coe
                            d_comm'43'_60
                            (MAlonzo.Code.BuiltIn.d__'43'__184
                               (coe MAlonzo.Code.BuiltIn.d__'42'__202 (coe v3) (coe v2))
                               (coe MAlonzo.Code.BuiltIn.d__'42'__202 (coe v1) (coe v2)))
                            v2)
                         (coe
                            MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                            (coe
                               du_assoc'43'_90 (coe v2)
                               (coe MAlonzo.Code.BuiltIn.d__'42'__202 (coe v3) (coe v2)))
                            (coe
                               MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                               (coe
                                  MAlonzo.Code.BuiltIn.du_cong_96
                                  (coe d_suc'45'help_126 (coe v3) (coe v2)))
                               (coe MAlonzo.Code.BuiltIn.du__'8718'_146)))))))
-- Arithmetic.distr*+
d_distr'42''43'_200 ::
  Integer -> Integer -> Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_distr'42''43'_200 v0 v1 v2
  = coe
      MAlonzo.Code.BuiltIn.du_trans_108
      (coe
         d_comm'42'_162 (coe v0)
         (coe MAlonzo.Code.BuiltIn.d__'43'__184 (coe v1) (coe v2)))
      (coe
         MAlonzo.Code.BuiltIn.du_trans_108
         (coe d_distr'43''42'_178 (coe v1) (coe v2) (coe v0))
         (coe
            MAlonzo.Code.BuiltIn.du_trans_108
            (coe
               MAlonzo.Code.BuiltIn.du_cong_96
               (coe d_comm'42'_162 (coe v1) (coe v0)))
            (coe
               MAlonzo.Code.BuiltIn.du_cong_96
               (coe d_comm'42'_162 (coe v2) (coe v0)))))
-- Arithmetic.assoc*
d_assoc'42'_218 ::
  Integer -> Integer -> Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_assoc'42'_218 v0 v1 v2
  = case coe v0 of
      0 -> coe MAlonzo.Code.BuiltIn.C_refl_84
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                (coe
                   MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                   (coe
                      MAlonzo.Code.BuiltIn.du_cong_96
                      (coe d_assoc'42'_218 (coe v3) (coe v1) (coe v2)))
                   (coe
                      MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                      (coe
                         MAlonzo.Code.BuiltIn.du_sym_116
                         (coe
                            d_distr'43''42'_178
                            (coe MAlonzo.Code.BuiltIn.d__'42'__202 (coe v3) (coe v1)) (coe v1)
                            (coe v2)))
                      (coe
                         MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                         (coe
                            MAlonzo.Code.BuiltIn.du_cong_96
                            (coe
                               d_comm'43'_60 (MAlonzo.Code.BuiltIn.d__'42'__202 (coe v3) (coe v1))
                               v1))
                         (coe
                            MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                            (coe
                               MAlonzo.Code.BuiltIn.du_cong_96
                               (coe d_suc'45'help_126 (coe v3) (coe v1)))
                            (coe MAlonzo.Code.BuiltIn.du__'8718'_146))))))
-- Arithmetic.AllDivide0
d_AllDivide0_238 :: Integer -> MAlonzo.Code.BuiltIn.T_Σ_44
d_AllDivide0_238 v0
  = coe
      MAlonzo.Code.BuiltIn.C__'44'__52 (coe (0 :: Integer))
      (coe d_n'42'0'61'0_38 (coe v0))
-- Arithmetic.only0Divides0
d_only0Divides0_244 ::
  Integer ->
  MAlonzo.Code.BuiltIn.T_Σ_44 -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_only0Divides0_244 ~v0 v1 = du_only0Divides0_244 v1
du_only0Divides0_244 ::
  MAlonzo.Code.BuiltIn.T_Σ_44 -> MAlonzo.Code.BuiltIn.T__'8801'__78
du_only0Divides0_244 v0
  = coe
      MAlonzo.Code.BuiltIn.du_sym_116
      (coe MAlonzo.Code.BuiltIn.d_cdr_70 (coe v0))
-- Arithmetic.divTrans
d_divTrans_256 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.BuiltIn.T_Σ_44 ->
  MAlonzo.Code.BuiltIn.T_Σ_44 -> MAlonzo.Code.BuiltIn.T_Σ_44
d_divTrans_256 v0 ~v1 ~v2 v3 v4 = du_divTrans_256 v0 v3 v4
du_divTrans_256 ::
  Integer ->
  MAlonzo.Code.BuiltIn.T_Σ_44 ->
  MAlonzo.Code.BuiltIn.T_Σ_44 -> MAlonzo.Code.BuiltIn.T_Σ_44
du_divTrans_256 v0 v1 v2
  = coe
      MAlonzo.Code.BuiltIn.C__'44'__52
      (coe
         MAlonzo.Code.BuiltIn.d__'42'__202 (coe du_k_272 (coe v1))
         (coe du_j_276 (coe v2)))
      (coe du_eq_280 (coe v0) (coe v1) (coe v2))
-- Arithmetic._.k
d_k_272 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.BuiltIn.T_Σ_44 ->
  MAlonzo.Code.BuiltIn.T_Σ_44 -> Integer
d_k_272 ~v0 ~v1 ~v2 v3 ~v4 = du_k_272 v3
du_k_272 :: MAlonzo.Code.BuiltIn.T_Σ_44 -> Integer
du_k_272 v0 = coe MAlonzo.Code.BuiltIn.d_car_58 (coe v0)
-- Arithmetic._.a*k=b
d_a'42'k'61'b_274 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.BuiltIn.T_Σ_44 ->
  MAlonzo.Code.BuiltIn.T_Σ_44 -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_a'42'k'61'b_274 ~v0 ~v1 ~v2 v3 ~v4 = du_a'42'k'61'b_274 v3
du_a'42'k'61'b_274 ::
  MAlonzo.Code.BuiltIn.T_Σ_44 -> MAlonzo.Code.BuiltIn.T__'8801'__78
du_a'42'k'61'b_274 v0 = coe MAlonzo.Code.BuiltIn.d_cdr_70 (coe v0)
-- Arithmetic._.j
d_j_276 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.BuiltIn.T_Σ_44 ->
  MAlonzo.Code.BuiltIn.T_Σ_44 -> Integer
d_j_276 ~v0 ~v1 ~v2 ~v3 v4 = du_j_276 v4
du_j_276 :: MAlonzo.Code.BuiltIn.T_Σ_44 -> Integer
du_j_276 v0 = coe MAlonzo.Code.BuiltIn.d_car_58 (coe v0)
-- Arithmetic._.b*j=c
d_b'42'j'61'c_278 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.BuiltIn.T_Σ_44 ->
  MAlonzo.Code.BuiltIn.T_Σ_44 -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_b'42'j'61'c_278 ~v0 ~v1 ~v2 ~v3 v4 = du_b'42'j'61'c_278 v4
du_b'42'j'61'c_278 ::
  MAlonzo.Code.BuiltIn.T_Σ_44 -> MAlonzo.Code.BuiltIn.T__'8801'__78
du_b'42'j'61'c_278 v0 = coe MAlonzo.Code.BuiltIn.d_cdr_70 (coe v0)
-- Arithmetic._.eq
d_eq_280 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.BuiltIn.T_Σ_44 ->
  MAlonzo.Code.BuiltIn.T_Σ_44 -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_eq_280 v0 ~v1 ~v2 v3 v4 = du_eq_280 v0 v3 v4
du_eq_280 ::
  Integer ->
  MAlonzo.Code.BuiltIn.T_Σ_44 ->
  MAlonzo.Code.BuiltIn.T_Σ_44 -> MAlonzo.Code.BuiltIn.T__'8801'__78
du_eq_280 v0 v1 v2
  = coe
      MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
      (coe
         d_assoc'42'_218 (coe v0) (coe du_k_272 (coe v1))
         (coe du_j_276 (coe v2)))
      (coe
         MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
         (coe
            MAlonzo.Code.BuiltIn.du_cong_96 (coe du_a'42'k'61'b_274 (coe v1)))
         (coe
            MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
            (coe du_b'42'j'61'c_278 (coe v2))
            (coe MAlonzo.Code.BuiltIn.du__'8718'_146)))
-- Arithmetic.eqAlso≤
d_eqAlso'8804'_290 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.BuiltIn.T__'215'__12 ->
  MAlonzo.Code.BuiltIn.T__'8804'__210
d_eqAlso'8804'_290 ~v0 ~v1 ~v2 v3 = du_eqAlso'8804'_290 v3
du_eqAlso'8804'_290 ::
  MAlonzo.Code.BuiltIn.T__'215'__12 ->
  MAlonzo.Code.BuiltIn.T__'8804'__210
du_eqAlso'8804'_290 v0
  = case coe v0 of
      MAlonzo.Code.BuiltIn.C__'44'__18 v1 v2
        -> coe MAlonzo.Code.BuiltIn.du_replace_126 (coe v2) (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Arithmetic.eqAlso≥
d_eqAlso'8805'_310 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.BuiltIn.T__'215'__12 ->
  MAlonzo.Code.BuiltIn.T__'8804'__210
d_eqAlso'8805'_310 ~v0 ~v1 ~v2 v3 = du_eqAlso'8805'_310 v3
du_eqAlso'8805'_310 ::
  MAlonzo.Code.BuiltIn.T__'215'__12 ->
  MAlonzo.Code.BuiltIn.T__'8804'__210
du_eqAlso'8805'_310 v0
  = case coe v0 of
      MAlonzo.Code.BuiltIn.C__'44'__18 v1 v2
        -> coe MAlonzo.Code.BuiltIn.du_replace_126 (coe v2) (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Arithmetic.times0is0
d_times0is0_328 ::
  Integer ->
  Integer ->
  MAlonzo.Code.BuiltIn.T__'8801'__78 ->
  MAlonzo.Code.BuiltIn.T__'8801'__78
d_times0is0_328 v0 ~v1 v2 = du_times0is0_328 v0 v2
du_times0is0_328 ::
  Integer ->
  MAlonzo.Code.BuiltIn.T__'8801'__78 ->
  MAlonzo.Code.BuiltIn.T__'8801'__78
du_times0is0_328 v0 v1
  = coe
      MAlonzo.Code.BuiltIn.du__'36'__376
      (coe
         MAlonzo.Code.BuiltIn.du_trans_108
         (coe MAlonzo.Code.BuiltIn.du_cong_96 (coe v1)))
      (coe d_n'42'0'61'0_38 (coe v0))
-- Arithmetic.≤and≥then=
d_'8804'and'8805'then'61'_342 ::
  Integer ->
  Integer ->
  MAlonzo.Code.BuiltIn.T__'215'__12 ->
  MAlonzo.Code.BuiltIn.T__'8801'__78
d_'8804'and'8805'then'61'_342 v0 v1 v2
  = case coe v0 of
      0 -> case coe v1 of
             0 -> coe MAlonzo.Code.BuiltIn.C_refl_84
             _ -> coe
                    seq (coe v2)
                    (coe
                       MAlonzo.Code.BuiltIn.du__'36'__376
                       (\ v3 -> coe MAlonzo.Code.BuiltIn.du_absurd_6) erased)
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> case coe v2 of
                       MAlonzo.Code.BuiltIn.C__'44'__18 v4 v5
                         -> coe
                              MAlonzo.Code.BuiltIn.du__'36'__376
                              (coe MAlonzo.Code.BuiltIn.du_sym_116)
                              (coe
                                 d_'8804'and'8805'then'61'_342 (coe (0 :: Integer)) (coe v0)
                                 (coe MAlonzo.Code.BuiltIn.C__'44'__18 (coe v5) (coe v4)))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> let v4 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (case coe v2 of
                          MAlonzo.Code.BuiltIn.C__'44'__18 v5 v6
                            -> case coe v5 of
                                 MAlonzo.Code.BuiltIn.C_s'8804's_220 v9
                                   -> case coe v6 of
                                        MAlonzo.Code.BuiltIn.C_s'8804's_220 v12
                                          -> coe
                                               MAlonzo.Code.BuiltIn.du__'36'__376
                                               (coe MAlonzo.Code.BuiltIn.du_cong_96)
                                               (coe
                                                  d_'8804'and'8805'then'61'_342 (coe v3) (coe v4)
                                                  (coe
                                                     MAlonzo.Code.BuiltIn.C__'44'__18 (coe v9)
                                                     (coe v12)))
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          _ -> MAlonzo.RTE.mazUnreachableError))
-- Arithmetic._.diff
d_diff_354 ::
  Integer ->
  MAlonzo.Code.BuiltIn.T__'8804'__210 ->
  MAlonzo.Code.BuiltIn.T__'8804'__210 -> MAlonzo.Code.BuiltIn.T_Σ_44
d_diff_354 v0 ~v1 v2 = du_diff_354 v0 v2
du_diff_354 ::
  Integer ->
  MAlonzo.Code.BuiltIn.T__'8804'__210 -> MAlonzo.Code.BuiltIn.T_Σ_44
du_diff_354 v0 v1
  = coe
      MAlonzo.Code.BuiltIn.d_difference_238
      (coe addInt (coe (1 :: Integer)) (coe v0)) (coe (0 :: Integer))
      (coe v1)
-- Arithmetic._.k
d_k_356 ::
  Integer ->
  MAlonzo.Code.BuiltIn.T__'8804'__210 ->
  MAlonzo.Code.BuiltIn.T__'8804'__210 -> Integer
d_k_356 v0 ~v1 v2 = du_k_356 v0 v2
du_k_356 ::
  Integer -> MAlonzo.Code.BuiltIn.T__'8804'__210 -> Integer
du_k_356 v0 v1
  = coe
      MAlonzo.Code.BuiltIn.d_car_58 (coe du_diff_354 (coe v0) (coe v1))
-- Arithmetic._.Sb+k=0
d_Sb'43'k'61'0_358 ::
  Integer ->
  MAlonzo.Code.BuiltIn.T__'8804'__210 ->
  MAlonzo.Code.BuiltIn.T__'8804'__210 ->
  MAlonzo.Code.BuiltIn.T__'8801'__78
d_Sb'43'k'61'0_358 v0 ~v1 v2 = du_Sb'43'k'61'0_358 v0 v2
du_Sb'43'k'61'0_358 ::
  Integer ->
  MAlonzo.Code.BuiltIn.T__'8804'__210 ->
  MAlonzo.Code.BuiltIn.T__'8801'__78
du_Sb'43'k'61'0_358 v0 v1
  = coe
      MAlonzo.Code.BuiltIn.d_cdr_70 (coe du_diff_354 (coe v0) (coe v1))
-- Arithmetic.Sa=Sb->a=b
d_Sa'61'Sb'45''62'a'61'b_378 ::
  Integer ->
  Integer ->
  MAlonzo.Code.BuiltIn.T__'8801'__78 ->
  MAlonzo.Code.BuiltIn.T__'8801'__78
d_Sa'61'Sb'45''62'a'61'b_378 ~v0 ~v1 v2
  = du_Sa'61'Sb'45''62'a'61'b_378 v2
du_Sa'61'Sb'45''62'a'61'b_378 ::
  MAlonzo.Code.BuiltIn.T__'8801'__78 ->
  MAlonzo.Code.BuiltIn.T__'8801'__78
du_Sa'61'Sb'45''62'a'61'b_378 v0
  = coe MAlonzo.Code.BuiltIn.du_cong_96 (coe v0)
-- Arithmetic.a≤b->Sa≤Sb
d_a'8804'b'45''62'Sa'8804'Sb_390 ::
  Integer ->
  Integer ->
  MAlonzo.Code.BuiltIn.T__'8804'__210 ->
  MAlonzo.Code.BuiltIn.T__'8804'__210
d_a'8804'b'45''62'Sa'8804'Sb_390 v0 ~v1 v2
  = du_a'8804'b'45''62'Sa'8804'Sb_390 v0 v2
du_a'8804'b'45''62'Sa'8804'Sb_390 ::
  Integer ->
  MAlonzo.Code.BuiltIn.T__'8804'__210 ->
  MAlonzo.Code.BuiltIn.T__'8804'__210
du_a'8804'b'45''62'Sa'8804'Sb_390 v0 v1
  = case coe v0 of
      0 -> coe
             seq (coe v1)
             (coe
                MAlonzo.Code.BuiltIn.C_s'8804's_220
                (coe MAlonzo.Code.BuiltIn.C_z'8804'n_214))
      _ -> case coe v1 of
             MAlonzo.Code.BuiltIn.C_s'8804's_220 v4
               -> coe
                    MAlonzo.Code.BuiltIn.C_s'8804's_220
                    (coe MAlonzo.Code.BuiltIn.C_s'8804's_220 v4)
             _ -> MAlonzo.RTE.mazUnreachableError
-- Arithmetic.≤Trans
d_'8804'Trans_406 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.BuiltIn.T__'8804'__210 ->
  MAlonzo.Code.BuiltIn.T__'8804'__210 ->
  MAlonzo.Code.BuiltIn.T__'8804'__210
d_'8804'Trans_406 v0 ~v1 ~v2 v3 v4 = du_'8804'Trans_406 v0 v3 v4
du_'8804'Trans_406 ::
  Integer ->
  MAlonzo.Code.BuiltIn.T__'8804'__210 ->
  MAlonzo.Code.BuiltIn.T__'8804'__210 ->
  MAlonzo.Code.BuiltIn.T__'8804'__210
du_'8804'Trans_406 v0 v1 v2
  = case coe v0 of
      0 -> coe seq (coe v1) (coe MAlonzo.Code.BuiltIn.C_z'8804'n_214)
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                MAlonzo.Code.BuiltIn.C_s'8804's_220 v6
                  -> case coe v2 of
                       MAlonzo.Code.BuiltIn.C_s'8804's_220 v9
                         -> coe
                              MAlonzo.Code.BuiltIn.C_s'8804's_220
                              (coe du_'8804'Trans_406 (coe v3) (coe v6) (coe v9))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Arithmetic.≤Switch
d_'8804'Switch_432 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.BuiltIn.T__'8801'__78 ->
  MAlonzo.Code.BuiltIn.T__'8801'__78 ->
  MAlonzo.Code.BuiltIn.T__'8804'__210 ->
  MAlonzo.Code.BuiltIn.T__'8804'__210
d_'8804'Switch_432 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_'8804'Switch_432 v4 v5 v6
du_'8804'Switch_432 ::
  MAlonzo.Code.BuiltIn.T__'8801'__78 ->
  MAlonzo.Code.BuiltIn.T__'8801'__78 ->
  MAlonzo.Code.BuiltIn.T__'8804'__210 ->
  MAlonzo.Code.BuiltIn.T__'8804'__210
du_'8804'Switch_432 v0 v1 v2
  = coe
      MAlonzo.Code.BuiltIn.du_replace_126 (coe v1)
      (coe MAlonzo.Code.BuiltIn.du_replace_126 (coe v0) (coe v2))
-- Arithmetic.≤+
d_'8804''43'_458 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.BuiltIn.T__'8804'__210 ->
  MAlonzo.Code.BuiltIn.T__'8804'__210
d_'8804''43'_458 v0 v1 v2 v3
  = case coe v2 of
      0 -> coe
             du_'8804'Switch_432 (coe d_'43'0'61'_22 (coe v0))
             (coe d_'43'0'61'_22 (coe v1)) (coe v3)
      _ -> let v4 = subInt (coe v2) (coe (1 :: Integer)) in
           coe
             (coe
                du_'8804'Switch_432 (coe du_suc'43''61''43'suc_48 (coe v0))
                (coe du_suc'43''61''43'suc_48 (coe v1))
                (coe
                   MAlonzo.Code.BuiltIn.C_s'8804's_220
                   (d_'8804''43'_458 (coe v0) (coe v1) (coe v4) (coe v3))))
-- Arithmetic.≤Product-help
d_'8804'Product'45'help_478 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.BuiltIn.T__'8801'__78 ->
   MAlonzo.Code.BuiltIn.T_'8869'_2) ->
  MAlonzo.Code.BuiltIn.T__'8804'__210
d_'8804'Product'45'help_478 v0 v1 ~v2
  = du_'8804'Product'45'help_478 v0 v1
du_'8804'Product'45'help_478 ::
  Integer -> Integer -> MAlonzo.Code.BuiltIn.T__'8804'__210
du_'8804'Product'45'help_478 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.BuiltIn.du_absurd_6
      _ -> case coe v0 of
             0 -> coe
                    du_'8804'Trans_406
                    (coe
                       addInt (coe (1 :: Integer))
                       (coe
                          MAlonzo.Code.BuiltIn.d__'42'__202 (coe (0 :: Integer)) (coe v1)))
                    (coe
                       MAlonzo.Code.BuiltIn.C_s'8804's_220
                       (coe MAlonzo.Code.BuiltIn.C_z'8804'n_214))
                    (coe
                       MAlonzo.Code.BuiltIn.C_s'8804's_220
                       (coe MAlonzo.Code.BuiltIn.C_z'8804'n_214))
             _ -> coe
                    du_'8804'Switch_432 (coe MAlonzo.Code.BuiltIn.C_refl_84)
                    (coe
                       d_comm'43'_60 v1
                       (MAlonzo.Code.BuiltIn.d__'42'__202 (coe v0) (coe v1)))
                    (coe
                       d_'8804''43'_458 (coe (1 :: Integer)) (coe v1)
                       (coe MAlonzo.Code.BuiltIn.d__'42'__202 (coe v0) (coe v1))
                       (coe
                          MAlonzo.Code.BuiltIn.C_s'8804's_220
                          (coe MAlonzo.Code.BuiltIn.C_z'8804'n_214)))
-- Arithmetic.≤Product
d_'8804'Product_500 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.BuiltIn.T__'215'__12 ->
  MAlonzo.Code.BuiltIn.T__'8804'__210
d_'8804'Product_500 v0 v1 v2 v3
  = let v4
          = case coe v0 of
              0 -> coe seq (coe v3) (coe MAlonzo.Code.BuiltIn.C_z'8804'n_214)
              _ -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
                   coe
                     (let v5 = subInt (coe v1) (coe (1 :: Integer)) in
                      coe
                        (case coe v3 of
                           MAlonzo.Code.BuiltIn.C__'44'__18 v6 v7
                             -> coe
                                  du_'8804'Trans_406 (coe v0)
                                  (coe
                                     du_a'8804'b'45''62'Sa'8804'Sb_390 (coe v4)
                                     (coe
                                        d_'8804'Product_500 (coe v4) (coe v5) (coe v2)
                                        (coe
                                           MAlonzo.Code.BuiltIn.C__'44'__18 (coe v6)
                                           (coe du_Sa'61'Sb'45''62'a'61'b_378 (coe v7)))))
                                  (coe du_'8804'Product'45'help_478 (coe v5) (coe v2))
                           _ -> MAlonzo.RTE.mazUnreachableError)) in
    coe
      (case coe v2 of
         0 -> coe seq (coe v3) (coe MAlonzo.Code.BuiltIn.du_absurd_6)
         _ -> case coe v0 of
                0 -> coe
                       seq (coe v3)
                       (case coe v1 of
                          0 -> coe MAlonzo.Code.BuiltIn.C_z'8804'n_214
                          _ -> coe v4)
                _ -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in
                     coe
                       (case coe v3 of
                          MAlonzo.Code.BuiltIn.C__'44'__18 v6 v7
                            -> case coe v1 of
                                 _ | coe geqInt (coe v1) (coe (1 :: Integer)) ->
                                     let v8 = subInt (coe v1) (coe (1 :: Integer)) in
                                     coe
                                       (coe
                                          du_'8804'Trans_406 (coe v0)
                                          (coe
                                             du_a'8804'b'45''62'Sa'8804'Sb_390 (coe v5)
                                             (coe
                                                d_'8804'Product_500 (coe v5) (coe v8) (coe v2)
                                                (coe
                                                   MAlonzo.Code.BuiltIn.C__'44'__18 (coe v6)
                                                   (coe du_Sa'61'Sb'45''62'a'61'b_378 (coe v7)))))
                                          (coe du_'8804'Product'45'help_478 (coe v8) (coe v2)))
                                 _ -> coe v4
                          _ -> MAlonzo.RTE.mazUnreachableError))
-- Arithmetic.rangeUpTo
d_rangeUpTo_526 :: Integer -> Integer -> MAlonzo.Code.List.T_List_4
d_rangeUpTo_526 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.List.C_'91''93'_8
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.List.C__'58''58'__10
                (coe MAlonzo.Code.BuiltIn.d__'43'__184 (coe v0) (coe v1))
                (coe d_rangeUpTo_526 (coe v0) (coe v2)))
-- Arithmetic.aInRangeBHelp3
d_aInRangeBHelp3_540 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.BuiltIn.T__'8801'__78 ->
  MAlonzo.Code.BuiltIn.T__'8801'__78
d_aInRangeBHelp3_540 v0 ~v1 v2 v3 = du_aInRangeBHelp3_540 v0 v2 v3
du_aInRangeBHelp3_540 ::
  Integer ->
  Integer ->
  MAlonzo.Code.BuiltIn.T__'8801'__78 ->
  MAlonzo.Code.BuiltIn.T__'8801'__78
du_aInRangeBHelp3_540 v0 v1 v2
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
             (coe
                MAlonzo.Code.BuiltIn.du_cong_96
                (coe MAlonzo.Code.BuiltIn.du_sym_116 (coe v2)))
             (coe
                MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                (coe
                   MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                   (coe
                      MAlonzo.Code.BuiltIn.du_cong_96
                      (coe
                         MAlonzo.Code.BuiltIn.du_sym_116 (coe d_'43'0'61'_22 (coe v0))))
                   (coe
                      MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                      (coe MAlonzo.Code.BuiltIn.C_refl_84))))
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                (coe
                   MAlonzo.Code.BuiltIn.du_cong_96
                   (coe MAlonzo.Code.BuiltIn.du_sym_116 (coe v2)))
                (coe
                   MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                   (coe
                      MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                      (coe
                         MAlonzo.Code.BuiltIn.du_cong_96
                         (coe
                            du_aInRangeBHelp3_540 (coe v0) (coe v3)
                            (coe du_suc'43''61''43'suc_48 (coe v0))))
                      (coe
                         MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                         (coe MAlonzo.Code.BuiltIn.C_refl_84)))))
-- Arithmetic.aInRangeBHelp2
d_aInRangeBHelp2_566 ::
  Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_aInRangeBHelp2_566 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.BuiltIn.C_refl_84
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                (coe
                   MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                   (coe
                      MAlonzo.Code.BuiltIn.du_cong_96
                      (coe d_aInRangeBHelp2_566 (coe v1)))
                   (coe
                      MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                      (coe
                         MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                         (coe MAlonzo.Code.BuiltIn.C_refl_84)))))
-- Arithmetic.aInRangeBHelp1
d_aInRangeBHelp1_578 ::
  Integer ->
  Integer ->
  MAlonzo.Code.BuiltIn.T_Σ_44 -> MAlonzo.Code.BuiltIn.T_Σ_44
d_aInRangeBHelp1_578 v0 v1 v2
  = case coe v0 of
      0 -> coe
             seq (coe v2)
             (coe
                MAlonzo.Code.BuiltIn.C__'44'__52
                (coe d_rangeUpTo_526 (coe (0 :: Integer)) (coe v1))
                (coe
                   MAlonzo.Code.BuiltIn.C__'44'__52
                   (coe MAlonzo.Code.List.C_'91''93'_8)
                   (coe d_aInRangeBHelp2_566 (coe v1))))
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v2 of
                MAlonzo.Code.BuiltIn.C__'44'__52 v4 v5
                  -> coe
                       MAlonzo.Code.BuiltIn.C__'44'__52
                       (coe d_rangeUpTo_526 (coe v0) (coe v4))
                       (coe
                          MAlonzo.Code.BuiltIn.C__'44'__52
                          (coe MAlonzo.Code.List.d_range_110 (coe v3))
                          (coe du_aInRangeBHelp3_540 (coe v3) (coe v4) (coe v5)))
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Arithmetic.aInRangeB
d_aInRangeB_598 ::
  Integer ->
  Integer ->
  MAlonzo.Code.BuiltIn.T__'8804'__210 -> MAlonzo.Code.BuiltIn.T_Σ_44
d_aInRangeB_598 v0 v1 v2
  = coe
      d_aInRangeBHelp1_578 (coe v0) (coe v1)
      (coe
         MAlonzo.Code.BuiltIn.d_difference_238 (coe v0) (coe v1) (coe v2))
-- Arithmetic.only≤Divides
d_only'8804'Divides_610 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.BuiltIn.T__'8801'__78 ->
   MAlonzo.Code.BuiltIn.T_'8869'_2) ->
  MAlonzo.Code.BuiltIn.T__'215'__12 ->
  MAlonzo.Code.BuiltIn.T_Σ_44 -> MAlonzo.Code.BuiltIn.T_'8869'_2
d_only'8804'Divides_610 = erased
-- Arithmetic._.k
d_k_628 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.BuiltIn.T__'8801'__78 ->
   MAlonzo.Code.BuiltIn.T_'8869'_2) ->
  (MAlonzo.Code.BuiltIn.T__'8801'__78 ->
   MAlonzo.Code.BuiltIn.T_'8869'_2) ->
  MAlonzo.Code.BuiltIn.T__'8804'__210 ->
  MAlonzo.Code.BuiltIn.T_Σ_44 -> Integer
d_k_628 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_k_628 v5
du_k_628 :: MAlonzo.Code.BuiltIn.T_Σ_44 -> Integer
du_k_628 v0 = coe MAlonzo.Code.BuiltIn.d_car_58 (coe v0)
-- Arithmetic._.ak=b
d_ak'61'b_630 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.BuiltIn.T__'8801'__78 ->
   MAlonzo.Code.BuiltIn.T_'8869'_2) ->
  (MAlonzo.Code.BuiltIn.T__'8801'__78 ->
   MAlonzo.Code.BuiltIn.T_'8869'_2) ->
  MAlonzo.Code.BuiltIn.T__'8804'__210 ->
  MAlonzo.Code.BuiltIn.T_Σ_44 -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_ak'61'b_630 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_ak'61'b_630 v5
du_ak'61'b_630 ::
  MAlonzo.Code.BuiltIn.T_Σ_44 -> MAlonzo.Code.BuiltIn.T__'8801'__78
du_ak'61'b_630 v0 = coe MAlonzo.Code.BuiltIn.d_cdr_70 (coe v0)
-- Arithmetic._.k!=0
d_k'33''61'0_632 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.BuiltIn.T__'8801'__78 ->
   MAlonzo.Code.BuiltIn.T_'8869'_2) ->
  (MAlonzo.Code.BuiltIn.T__'8801'__78 ->
   MAlonzo.Code.BuiltIn.T_'8869'_2) ->
  MAlonzo.Code.BuiltIn.T__'8804'__210 ->
  MAlonzo.Code.BuiltIn.T_Σ_44 ->
  MAlonzo.Code.BuiltIn.T__'8801'__78 ->
  MAlonzo.Code.BuiltIn.T_'8869'_2
d_k'33''61'0_632 = erased
-- Arithmetic._.a≤ak
d_a'8804'ak_638 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.BuiltIn.T__'8801'__78 ->
   MAlonzo.Code.BuiltIn.T_'8869'_2) ->
  (MAlonzo.Code.BuiltIn.T__'8801'__78 ->
   MAlonzo.Code.BuiltIn.T_'8869'_2) ->
  MAlonzo.Code.BuiltIn.T__'8804'__210 ->
  MAlonzo.Code.BuiltIn.T_Σ_44 -> MAlonzo.Code.BuiltIn.T__'8804'__210
d_a'8804'ak_638 v0 ~v1 ~v2 ~v3 ~v4 v5 = du_a'8804'ak_638 v0 v5
du_a'8804'ak_638 ::
  Integer ->
  MAlonzo.Code.BuiltIn.T_Σ_44 -> MAlonzo.Code.BuiltIn.T__'8804'__210
du_a'8804'ak_638 v0 v1
  = coe
      d_'8804'Product_500 (coe v0) (coe v0) (coe du_k_628 (coe v1))
      (coe
         MAlonzo.Code.BuiltIn.C__'44'__18 erased
         (coe MAlonzo.Code.BuiltIn.C_refl_84))
-- Arithmetic._.a≤b
d_a'8804'b_640 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.BuiltIn.T__'8801'__78 ->
   MAlonzo.Code.BuiltIn.T_'8869'_2) ->
  (MAlonzo.Code.BuiltIn.T__'8801'__78 ->
   MAlonzo.Code.BuiltIn.T_'8869'_2) ->
  MAlonzo.Code.BuiltIn.T__'8804'__210 ->
  MAlonzo.Code.BuiltIn.T_Σ_44 -> MAlonzo.Code.BuiltIn.T__'8804'__210
d_a'8804'b_640 v0 ~v1 ~v2 ~v3 ~v4 v5 = du_a'8804'b_640 v0 v5
du_a'8804'b_640 ::
  Integer ->
  MAlonzo.Code.BuiltIn.T_Σ_44 -> MAlonzo.Code.BuiltIn.T__'8804'__210
du_a'8804'b_640 v0 v1
  = coe
      du_eqAlso'8804'_290
      (coe
         MAlonzo.Code.BuiltIn.C__'44'__18
         (coe du_a'8804'ak_638 (coe v0) (coe v1))
         (coe du_ak'61'b_630 (coe v1)))
-- Arithmetic.a≤Sa
d_a'8804'Sa_644 :: Integer -> MAlonzo.Code.BuiltIn.T__'8804'__210
d_a'8804'Sa_644 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.BuiltIn.C_z'8804'n_214
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.BuiltIn.C_s'8804's_220 (d_a'8804'Sa_644 (coe v1)))
-- Arithmetic.aDiv1=>a=1
d_aDiv1'61''62'a'61'1_650 ::
  Integer ->
  MAlonzo.Code.BuiltIn.T_Σ_44 -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_aDiv1'61''62'a'61'1_650 v0 ~v1 = du_aDiv1'61''62'a'61'1_650 v0
du_aDiv1'61''62'a'61'1_650 ::
  Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
du_aDiv1'61''62'a'61'1_650 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.BuiltIn.du__'36'__376
             (\ v1 -> coe MAlonzo.Code.BuiltIn.du_absurd_6) erased
      1 -> coe MAlonzo.Code.BuiltIn.C_refl_84
      _ -> coe
             MAlonzo.Code.BuiltIn.du__'36'__376
             (\ v1 -> coe MAlonzo.Code.BuiltIn.du_absurd_6) erased
-- Arithmetic._.SSa!=1
d_SSa'33''61'1_664 ::
  Integer ->
  MAlonzo.Code.BuiltIn.T_Σ_44 ->
  MAlonzo.Code.BuiltIn.T__'8801'__78 ->
  MAlonzo.Code.BuiltIn.T_'8869'_2
d_SSa'33''61'1_664 = erased
-- Arithmetic._.1≤SSa
d_1'8804'SSa_668 ::
  Integer ->
  MAlonzo.Code.BuiltIn.T_Σ_44 -> MAlonzo.Code.BuiltIn.T__'8804'__210
d_1'8804'SSa_668 v0 ~v1 = du_1'8804'SSa_668 v0
du_1'8804'SSa_668 :: Integer -> MAlonzo.Code.BuiltIn.T__'8804'__210
du_1'8804'SSa_668 v0
  = coe
      du_'8804'Trans_406 (coe (1 :: Integer))
      (coe
         MAlonzo.Code.BuiltIn.C_s'8804's_220
         (coe MAlonzo.Code.BuiltIn.C_z'8804'n_214))
      (coe d_a'8804'Sa_644 (coe addInt (coe (1 :: Integer)) (coe v0)))
-- Arithmetic.≤Dec
d_'8804'Dec_674 ::
  Integer -> Integer -> MAlonzo.Code.BuiltIn.T_Either_282
d_'8804'Dec_674 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.BuiltIn.C_left_288
             (coe MAlonzo.Code.BuiltIn.C_z'8804'n_214)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe
                       MAlonzo.Code.BuiltIn.C_right_290
                       (coe MAlonzo.Code.BuiltIn.C_z'8804'n_214)
                _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.BuiltIn.du_cases_298
                          (coe d_'8804'Dec_674 (coe v2) (coe v3))
                          (coe
                             MAlonzo.Code.BuiltIn.du__'8728'__388
                             (coe MAlonzo.Code.BuiltIn.C_left_288)
                             (coe MAlonzo.Code.BuiltIn.C_s'8804's_220))
                          (coe
                             MAlonzo.Code.BuiltIn.du__'8728'__388
                             (coe MAlonzo.Code.BuiltIn.C_right_290)
                             (coe MAlonzo.Code.BuiltIn.C_s'8804's_220))))
-- Arithmetic.1not≤0
d_1not'8804'0_684 ::
  MAlonzo.Code.BuiltIn.T__'8804'__210 ->
  MAlonzo.Code.BuiltIn.T_'8869'_2
d_1not'8804'0_684 = erased
-- Arithmetic.a≤0=>a=0
d_a'8804'0'61''62'a'61'0_688 ::
  Integer ->
  MAlonzo.Code.BuiltIn.T__'8804'__210 ->
  MAlonzo.Code.BuiltIn.T__'8801'__78
d_a'8804'0'61''62'a'61'0_688 v0 ~v1
  = du_a'8804'0'61''62'a'61'0_688 v0
du_a'8804'0'61''62'a'61'0_688 ::
  Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
du_a'8804'0'61''62'a'61'0_688 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.BuiltIn.C_refl_84
      _ -> coe
             MAlonzo.Code.BuiltIn.du__'36'__376
             (\ v1 -> coe MAlonzo.Code.BuiltIn.du_absurd_6) erased
-- Arithmetic._.a≤0
d_a'8804'0_698 ::
  Integer ->
  MAlonzo.Code.BuiltIn.T__'8804'__210 ->
  MAlonzo.Code.BuiltIn.T__'8804'__210
d_a'8804'0_698 v0 v1
  = coe
      du_'8804'Trans_406 (coe v0) (coe d_a'8804'Sa_644 (coe v0)) (coe v1)
-- Arithmetic._.a=0
d_a'61'0_700 ::
  Integer ->
  MAlonzo.Code.BuiltIn.T__'8804'__210 ->
  MAlonzo.Code.BuiltIn.T__'8801'__78
d_a'61'0_700 v0 v1 = coe du_a'8804'0'61''62'a'61'0_688 (coe v0)
-- Arithmetic.a≤Sb&a!=Sb=>a≤b
d_a'8804'Sb'38'a'33''61'Sb'61''62'a'8804'b_706 ::
  Integer ->
  Integer ->
  MAlonzo.Code.BuiltIn.T__'8804'__210 ->
  (MAlonzo.Code.BuiltIn.T__'8801'__78 ->
   MAlonzo.Code.BuiltIn.T_'8869'_2) ->
  MAlonzo.Code.BuiltIn.T__'8804'__210
d_a'8804'Sb'38'a'33''61'Sb'61''62'a'8804'b_706 v0 v1 v2 v3
  = case coe v0 of
      0 -> coe MAlonzo.Code.BuiltIn.C_z'8804'n_214
      _ -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe
                       MAlonzo.Code.BuiltIn.du__'36'__376
                       (\ v5 -> coe MAlonzo.Code.BuiltIn.du_absurd_6)
                       (coe
                          v3
                          (d_'8804'and'8805'then'61'_342
                             (coe v0) (coe (1 :: Integer))
                             (coe
                                MAlonzo.Code.BuiltIn.C__'44'__18 (coe v2)
                                (coe
                                   MAlonzo.Code.BuiltIn.C_s'8804's_220
                                   (coe MAlonzo.Code.BuiltIn.C_z'8804'n_214)))))
                _ -> let v5 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (case coe v2 of
                          MAlonzo.Code.BuiltIn.C_s'8804's_220 v8
                            -> coe
                                 du_a'8804'b'45''62'Sa'8804'Sb_390 (coe v4)
                                 (coe
                                    d_a'8804'Sb'38'a'33''61'Sb'61''62'a'8804'b_706 (coe v4) (coe v5)
                                    (coe v8) erased)
                          _ -> MAlonzo.RTE.mazUnreachableError))
-- Arithmetic._.a!=Sb
d_a'33''61'Sb_732 ::
  Integer ->
  Integer ->
  MAlonzo.Code.BuiltIn.T__'8804'__210 ->
  (MAlonzo.Code.BuiltIn.T__'8801'__78 ->
   MAlonzo.Code.BuiltIn.T_'8869'_2) ->
  MAlonzo.Code.BuiltIn.T__'8801'__78 ->
  MAlonzo.Code.BuiltIn.T_'8869'_2
d_a'33''61'Sb_732 = erased
-- Arithmetic.!0≥1
d_'33'0'8805'1_738 ::
  Integer ->
  (MAlonzo.Code.BuiltIn.T__'8801'__78 ->
   MAlonzo.Code.BuiltIn.T_'8869'_2) ->
  MAlonzo.Code.BuiltIn.T__'8804'__210
d_'33'0'8805'1_738 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.BuiltIn.du__'36'__376
             (\ v2 -> coe MAlonzo.Code.BuiltIn.du_absurd_6)
             (coe v1 (coe MAlonzo.Code.BuiltIn.C_refl_84))
      _ -> coe
             MAlonzo.Code.BuiltIn.C_s'8804's_220
             (coe MAlonzo.Code.BuiltIn.C_z'8804'n_214)
-- Arithmetic.≥1!0
d_'8805'1'33'0_748 ::
  Integer ->
  MAlonzo.Code.BuiltIn.T__'8804'__210 ->
  MAlonzo.Code.BuiltIn.T__'8801'__78 ->
  MAlonzo.Code.BuiltIn.T_'8869'_2
d_'8805'1'33'0_748 = erased
-- Arithmetic.a*b!=0
d_a'42'b'33''61'0_764 ::
  Integer ->
  Integer ->
  MAlonzo.Code.BuiltIn.T__'215'__12 ->
  MAlonzo.Code.BuiltIn.T__'8801'__78 ->
  MAlonzo.Code.BuiltIn.T_'8869'_2
d_a'42'b'33''61'0_764 = erased
-- Arithmetic.c-c=0
d_c'45'c'61'0_800 :: Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_c'45'c'61'0_800 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.BuiltIn.C_refl_84
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                (coe
                   MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                   (coe d_c'45'c'61'0_800 (coe v1))
                   (coe MAlonzo.Code.BuiltIn.du__'8718'_146)))
-- Arithmetic.a+c-c=a
d_a'43'c'45'c'61'a_808 ::
  Integer -> Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_a'43'c'45'c'61'a_808 v0 v1
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
             (coe
                MAlonzo.Code.BuiltIn.du_cong_96
                (coe
                   MAlonzo.Code.BuiltIn.du_sym_116 (coe d_'43'0'61'_22 (coe v0))))
             (coe
                MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                (coe MAlonzo.Code.BuiltIn.du__'8718'_146))
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                (coe MAlonzo.Code.BuiltIn.du_cong_96 (coe d_comm'43'_60 v0 v1))
                (coe
                   MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                   (coe
                      MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                      (coe MAlonzo.Code.BuiltIn.du_cong_96 (coe d_comm'43'_60 v2 v0))
                      (coe
                         MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                         (coe
                            MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                            (coe d_a'43'c'45'c'61'a_808 (coe v0) (coe v2))
                            (coe MAlonzo.Code.BuiltIn.du__'8718'_146))))))
-- Arithmetic.-0=0
d_'45'0'61'0_824 :: Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_'45'0'61'0_824 v0
  = coe seq (coe v0) (coe MAlonzo.Code.BuiltIn.C_refl_84)
-- Arithmetic.neg-distr
d_neg'45'distr_834 ::
  Integer -> Integer -> Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_neg'45'distr_834 v0 v1 v2
  = case coe v0 of
      0 -> case coe v1 of
             0 -> coe MAlonzo.Code.BuiltIn.C_refl_84
             _ -> coe
                    MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                    (coe
                       MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                       (coe
                          MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                          (coe d_'45'0'61'0_824 (coe v2))
                          (coe
                             MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                             (coe
                                MAlonzo.Code.BuiltIn.du_cong_96 (coe d_'45'0'61'0_824 (coe v1)))
                             (coe MAlonzo.Code.BuiltIn.du__'8718'_146))))
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe MAlonzo.Code.BuiltIn.C_refl_84
                _ -> let v4 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                          (coe
                             MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                             (coe
                                MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                                (coe d_neg'45'distr_834 (coe v3) (coe v4) (coe v2))
                                (coe MAlonzo.Code.BuiltIn.du__'8718'_146)))))
-- Arithmetic.sca-sba
d_sca'45'sba_860 ::
  Integer -> Integer -> Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_sca'45'sba_860 v0 v1 v2
  = case coe v1 of
      0 -> case coe v2 of
             0 -> coe
                    MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                    (coe
                       MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                       (coe d_c'45'c'61'0_800 (coe v0))
                       (coe MAlonzo.Code.BuiltIn.du__'8718'_146))
             _ -> coe
                    MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                    (coe MAlonzo.Code.BuiltIn.du_cong_96 (coe d_comm'43'_60 v2 v0))
                    (coe
                       MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                       (coe
                          MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                          (coe d_neg'45'distr_834 (coe v0) (coe v0) (coe v2))
                          (coe
                             MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                             (coe
                                MAlonzo.Code.BuiltIn.du_cong_96 (coe d_c'45'c'61'0_800 (coe v0)))
                             (coe
                                MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                                (coe MAlonzo.Code.BuiltIn.du__'8718'_146)))))
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (case coe v2 of
                0 -> coe
                       MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                       (coe
                          MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                          (coe d_a'43'c'45'c'61'a_808 (coe v1) (coe v0))
                          (coe MAlonzo.Code.BuiltIn.du__'8718'_146))
                _ -> let v4 = subInt (coe v2) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                          (coe
                             MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                             (coe
                                MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                                (coe d_sca'45'sba_860 (coe v0) (coe v3) (coe v4))
                                (coe MAlonzo.Code.BuiltIn.du__'8718'_146)))))
-- Arithmetic.a*c-a*b=a*c-b
d_a'42'c'45'a'42'b'61'a'42'c'45'b_888 ::
  Integer -> Integer -> Integer -> MAlonzo.Code.BuiltIn.T__'8801'__78
d_a'42'c'45'a'42'b'61'a'42'c'45'b_888 v0 v1 v2
  = case coe v1 of
      0 -> case coe v2 of
             0 -> coe
                    MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                    (coe
                       d_c'45'c'61'0_800
                       (coe
                          MAlonzo.Code.BuiltIn.d__'42'__202 (coe v0) (coe (0 :: Integer))))
                    (coe
                       MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                       (coe
                          MAlonzo.Code.BuiltIn.du__'36'__376
                          (coe MAlonzo.Code.BuiltIn.du_sym_116)
                          (coe d_n'42'0'61'0_38 (coe v0)))
                       (coe MAlonzo.Code.BuiltIn.du__'8718'_146))
             _ -> coe
                    MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                    (coe
                       MAlonzo.Code.BuiltIn.du_cong_96 (coe d_n'42'0'61'0_38 (coe v0)))
                    (coe
                       MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                       (coe MAlonzo.Code.BuiltIn.du__'8718'_146))
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (case coe v2 of
                0 -> coe
                       MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                       (coe
                          MAlonzo.Code.BuiltIn.du_cong_96 (coe d_n'42'0'61'0_38 (coe v0)))
                       (coe
                          MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                          (coe
                             MAlonzo.Code.BuiltIn.du_sym_116
                             (coe
                                d_'45'0'61'0_824
                                (coe MAlonzo.Code.BuiltIn.d__'42'__202 (coe v0) (coe v1))))
                          (coe
                             MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                             (coe
                                MAlonzo.Code.BuiltIn.du__'36'__376
                                (coe MAlonzo.Code.BuiltIn.du_sym_116)
                                (coe d_n'42'0'61'0_38 (coe v0)))
                             (coe
                                MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                                (coe
                                   MAlonzo.Code.BuiltIn.du_cong_96 (coe d_'45'0'61'0_824 (coe v1)))
                                (coe MAlonzo.Code.BuiltIn.du__'8718'_146))))
                _ -> let v4 = subInt (coe v2) (coe (1 :: Integer)) in
                     coe
                       (coe
                          MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                          (coe
                             MAlonzo.Code.BuiltIn.du_cong_96
                             (coe d_comm'42'_162 (coe v0) (coe v1)))
                          (coe
                             MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                             (coe
                                MAlonzo.Code.BuiltIn.du_cong_96
                                (coe d_comm'42'_162 (coe v0) (coe v2)))
                             (coe
                                MAlonzo.Code.BuiltIn.du__'61''10216''10217'__172
                                (coe
                                   MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                                   (coe
                                      d_sca'45'sba_860 (coe v0)
                                      (coe MAlonzo.Code.BuiltIn.d__'42'__202 (coe v4) (coe v0))
                                      (coe MAlonzo.Code.BuiltIn.d__'42'__202 (coe v3) (coe v0)))
                                   (coe
                                      MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                                      (coe
                                         MAlonzo.Code.BuiltIn.du_cong_96
                                         (coe d_comm'42'_162 (coe v3) (coe v0)))
                                      (coe
                                         MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                                         (coe
                                            MAlonzo.Code.BuiltIn.du_cong_96
                                            (coe d_comm'42'_162 (coe v4) (coe v0)))
                                         (coe
                                            MAlonzo.Code.BuiltIn.du__'61''10216'_'10217'__158
                                            (coe
                                               d_a'42'c'45'a'42'b'61'a'42'c'45'b_888 (coe v0)
                                               (coe v3) (coe v4))
                                            (coe MAlonzo.Code.BuiltIn.du__'8718'_146)))))))))
