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

module MAlonzo.Code.Ledger.Conway.Conformance.Epoch where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Integer.Ext
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Maybe.Properties
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Ratify
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.Acnt
d_Acnt_28 a0 = ()
-- _.Credential
d_Credential_48 a0 = ()
-- _.DecEq-Credential
d_DecEq'45'Credential_82 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_82 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0)))
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_108 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_108 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0)))
-- _.Epoch
d_Epoch_146 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_146 = erased
-- _.THash
d_THash_192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_192 = erased
-- _.Number-Epoch
d_Number'45'Epoch_218 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_218 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_252
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v0))
-- _.RwdAddr
d_RwdAddr_268 a0 = ()
-- _.TxOut
d_TxOut_366 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_366 = erased
-- _.UTxO
d_UTxO_372 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_372 = erased
-- _.VDeleg
d_VDeleg_378 a0 = ()
-- _.addEpoch
d_addEpoch_406 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addEpoch_406 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1508 (coe v0))
-- _.Acnt.reserves
d_reserves_594 :: MAlonzo.Code.Ledger.PParams.T_Acnt_146 -> Integer
d_reserves_594 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_154 (coe v0)
-- _.Acnt.treasury
d_treasury_596 :: MAlonzo.Code.Ledger.PParams.T_Acnt_146 -> Integer
d_treasury_596 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_152 (coe v0)
-- _.GovernanceActions.VDeleg
d_VDeleg_770 a0 = ()
-- _.RwdAddr.net
d_net_1154 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> AgdaAny
d_net_1154 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- _.RwdAddr.stake
d_stake_1156 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1156 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.GovState
d_GovState_1496 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 -> ()
d_GovState_1496 = erased
-- Ledger.Conway.Conformance.Epoch._.EnactState
d_EnactState_1542 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.ccCreds
d_ccCreds_1544 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_ccCreds_1544 ~v0 ~v1 = du_ccCreds_1544
du_ccCreds_1544 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
du_ccCreds_1544 = coe MAlonzo.Code.Ledger.Enact.du_ccCreds_850
-- Ledger.Conway.Conformance.Epoch._.EnactState.cc
d_cc_1578 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_1578 v0 = coe MAlonzo.Code.Ledger.Enact.d_cc_840 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.EnactState.constitution
d_constitution_1580 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_1580 v0
  = coe MAlonzo.Code.Ledger.Enact.d_constitution_842 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.EnactState.pparams
d_pparams_1582 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_1582 v0
  = coe MAlonzo.Code.Ledger.Enact.d_pparams_846 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.EnactState.pv
d_pv_1584 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1584 v0 = coe MAlonzo.Code.Ledger.Enact.d_pv_844 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.EnactState.withdrawals
d_withdrawals_1586 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_1586 v0
  = coe MAlonzo.Code.Ledger.Enact.d_withdrawals_848 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.LState
d_LState_1602 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.LState.certState
d_certState_1634 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2176 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070
d_certState_1634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2188
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.LState.govSt
d_govSt_1636 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2176 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2186 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.LState.utxoSt
d_utxoSt_1638 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2176 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924
d_utxoSt_1638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2184
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1648 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1958 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1988 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1988 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1648 = erased
-- Ledger.Conway.Conformance.Epoch._.RatifyState
d_RatifyState_1668 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.StakeDistrs
d_StakeDistrs_1670 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.RatifyState.delay
d_delay_1746 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1988 -> Bool
d_delay_1746 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_delay_2000 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.RatifyState.es
d_es_1748 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1988 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828
d_es_1748 v0 = coe MAlonzo.Code.Ledger.Ratify.d_es_1996 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.RatifyState.removed
d_removed_1750 ::
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1988 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_1750 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_removed_1998 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.StakeDistrs.stakeDistr
d_stakeDistr_1754 ::
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1952 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1754 v0
  = coe MAlonzo.Code.Ledger.Ratify.d_stakeDistr_1956 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.L.UTxOState
d_UTxOState_1828 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.L.UTxOState.deposits
d_deposits_1946 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1946 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1938 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.L.UTxOState.donations
d_donations_1948 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 -> Integer
d_donations_1948 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1940 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.L.UTxOState.fees
d_fees_1950 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 -> Integer
d_fees_1950 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1936 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.L.UTxOState.utxo
d_utxo_1952 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1952 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1934 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.CertState
d_CertState_2016 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.DState
d_DState_2036 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2038 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2038 v0 ~v1
  = du_DecEq'45'DepositPurpose_2038 v0
du_DecEq'45'DepositPurpose_2038 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_2038 v0
  = let v1
          = MAlonzo.Code.Ledger.Transaction.d_govStructure_2330 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824 (coe v1))
-- Ledger.Conway.Conformance.Epoch._.DepositPurpose
d_DepositPurpose_2042 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.Deposits
d_Deposits_2044 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 -> ()
d_Deposits_2044 = erased
-- Ledger.Conway.Conformance.Epoch._.GState
d_GState_2058 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.PState
d_PState_2074 a0 a1 = ()
-- Ledger.Conway.Conformance.Epoch._.CertState.dState
d_dState_2168 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1034
d_dState_2168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1078 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.CertState.gState
d_gState_2170 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1054
d_gState_2170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1082 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.CertState.pState
d_pState_2172 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070 ->
  MAlonzo.Code.Ledger.Certs.T_PState_904
d_pState_2172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1080 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.DState.deposits
d_deposits_2194 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1034 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1050
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.DState.rewards
d_rewards_2196 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1034 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1048
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.DState.stakeDelegs
d_stakeDelegs_2198 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1034 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1046
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.DState.voteDelegs
d_voteDelegs_2200 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1034 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1044
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.GState.ccHotKeys
d_ccHotKeys_2222 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1054 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1064
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.GState.deposits
d_deposits_2224 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1054 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_1066
      (coe v0)
-- Ledger.Conway.Conformance.Epoch._.GState.dreps
d_dreps_2226 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1054 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1062 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.PState.pools
d_pools_2230 ::
  MAlonzo.Code.Ledger.Certs.T_PState_904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2230 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_910 (coe v0)
-- Ledger.Conway.Conformance.Epoch._.PState.retiring
d_retiring_2232 ::
  MAlonzo.Code.Ledger.Certs.T_PState_904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2232 v0
  = coe MAlonzo.Code.Ledger.Certs.d_retiring_912 (coe v0)
-- Ledger.Conway.Conformance.Epoch.RewardUpdate
d_RewardUpdate_2238 a0 a1 = ()
data T_RewardUpdate_2238
  = C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2264 Integer Integer
                                                     Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Epoch.RewardUpdate.Δt
d_Δt_2252 :: T_RewardUpdate_2238 -> Integer
d_Δt_2252 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2264 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.RewardUpdate.Δr
d_Δr_2254 :: T_RewardUpdate_2238 -> Integer
d_Δr_2254 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2264 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.RewardUpdate.Δf
d_Δf_2256 :: T_RewardUpdate_2238 -> Integer
d_Δf_2256 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2264 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.RewardUpdate.rs
d_rs_2258 ::
  T_RewardUpdate_2238 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2258 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2264 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.RewardUpdate.zeroSum
d_zeroSum_2262 ::
  T_RewardUpdate_2238 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_zeroSum_2262 = erased
-- Ledger.Conway.Conformance.Epoch.Snapshot
d_Snapshot_2266 a0 a1 = ()
data T_Snapshot_2266
  = C_'10214'_'44'_'10215''738'_2276 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Epoch.Snapshot.stake
d_stake_2272 ::
  T_Snapshot_2266 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2272 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738'_2276 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshot.delegations
d_delegations_2274 ::
  T_Snapshot_2266 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2274 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''738'_2276 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshots
d_Snapshots_2278 a0 a1 = ()
data T_Snapshots_2278
  = C_'10214'_'44'_'44'_'44'_'10215''738''738'_2296 T_Snapshot_2266
                                                    T_Snapshot_2266 T_Snapshot_2266 Integer
-- Ledger.Conway.Conformance.Epoch.Snapshots.mark
d_mark_2288 :: T_Snapshots_2278 -> T_Snapshot_2266
d_mark_2288 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2296 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshots.set
d_set_2290 :: T_Snapshots_2278 -> T_Snapshot_2266
d_set_2290 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2296 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshots.go
d_go_2292 :: T_Snapshots_2278 -> T_Snapshot_2266
d_go_2292 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2296 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.Snapshots.feeSS
d_feeSS_2294 :: T_Snapshots_2278 -> Integer
d_feeSS_2294 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''738''738'_2296 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState
d_EpochState_2298 a0 a1 = ()
data T_EpochState_2298
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2320 MAlonzo.Code.Ledger.PParams.T_Acnt_146
                                                       T_Snapshots_2278
                                                       MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2176
                                                       MAlonzo.Code.Ledger.Enact.T_EnactState_828
                                                       MAlonzo.Code.Ledger.Ratify.T_RatifyState_1988
-- Ledger.Conway.Conformance.Epoch.EpochState.acnt
d_acnt_2310 ::
  T_EpochState_2298 -> MAlonzo.Code.Ledger.PParams.T_Acnt_146
d_acnt_2310 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2320 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState.ss
d_ss_2312 :: T_EpochState_2298 -> T_Snapshots_2278
d_ss_2312 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2320 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState.ls
d_ls_2314 ::
  T_EpochState_2298 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2176
d_ls_2314 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2320 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState.es
d_es_2316 ::
  T_EpochState_2298 -> MAlonzo.Code.Ledger.Enact.T_EnactState_828
d_es_2316 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2320 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.EpochState.fut
d_fut_2318 ::
  T_EpochState_2298 -> MAlonzo.Code.Ledger.Ratify.T_RatifyState_1988
d_fut_2318 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2320 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.NewEpochState
d_NewEpochState_2322 a0 a1 = ()
data T_NewEpochState_2322
  = C_'10214'_'44'_'44'_'10215''8319''7497'_2336 AgdaAny
                                                 T_EpochState_2298 (Maybe T_RewardUpdate_2238)
-- Ledger.Conway.Conformance.Epoch.NewEpochState.lastEpoch
d_lastEpoch_2330 :: T_NewEpochState_2322 -> AgdaAny
d_lastEpoch_2330 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2336 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.NewEpochState.epochState
d_epochState_2332 :: T_NewEpochState_2322 -> T_EpochState_2298
d_epochState_2332 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2336 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.NewEpochState.ru
d_ru_2334 :: T_NewEpochState_2322 -> Maybe T_RewardUpdate_2238
d_ru_2334 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''8319''7497'_2336 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.toRwdAddr
d_toRwdAddr_2384 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_toRwdAddr_2384 v0 ~v1 v2 = du_toRwdAddr_2384 v0 v2
du_toRwdAddr_2384 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
du_toRwdAddr_2384 v0 v1
  = coe
      MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_3243
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200 (coe v0)))
      (coe v1)
-- Ledger.Conway.Conformance.Epoch.getStakeCred
d_getStakeCred_2388 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getStakeCred_2388 ~v0 ~v1 v2 = du_getStakeCred_2388 v2
du_getStakeCred_2388 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getStakeCred_2388 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe
                    seq (coe v4)
                    (coe MAlonzo.Code.Ledger.Address.du_stakeCred_110 (coe v1))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.applyRUpd
d_applyRUpd_2392 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_RewardUpdate_2238 -> T_EpochState_2298 -> T_EpochState_2298
d_applyRUpd_2392 v0 ~v1 v2 v3 = du_applyRUpd_2392 v0 v2 v3
du_applyRUpd_2392 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RewardUpdate_2238 -> T_EpochState_2298 -> T_EpochState_2298
du_applyRUpd_2392 v0 v1 v2
  = case coe v1 of
      C_'10214'_'44'_'44'_'44'_'10215''691''7512'_2264 v3 v4 v5 v6
        -> case coe v2 of
             C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2320 v8 v9 v10 v11 v12
               -> case coe v8 of
                    MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_156 v13 v14
                      -> case coe v10 of
                           MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2190 v15 v16 v17
                             -> case coe v15 of
                                  MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1942 v18 v19 v20 v21
                                    -> case coe v17 of
                                         MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1084 v22 v23 v24
                                           -> case coe v22 of
                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1052 v25 v26 v27 v28
                                                  -> coe
                                                       C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_2320
                                                       (coe
                                                          MAlonzo.Code.Ledger.PParams.C_'10214'_'44'_'10215''7491'_156
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Ext.d_posPart_10
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                (coe
                                                                   MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                   (coe v13) (coe v3))
                                                                (coe
                                                                   du_unregRU''_2442 (coe v0)
                                                                   (coe v6) (coe v27))))
                                                          (coe
                                                             MAlonzo.Code.Data.Integer.Ext.d_posPart_10
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                (coe v14) (coe v4))))
                                                       (coe v9)
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Ledger.C_'10214'_'44'_'44'_'10215''737'_2190
                                                          (coe
                                                             MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1942
                                                             (coe v18)
                                                             (coe
                                                                MAlonzo.Code.Data.Integer.Ext.d_posPart_10
                                                                (coe
                                                                   MAlonzo.Code.Data.Integer.Base.d__'43'__276
                                                                   (coe v19) (coe v5)))
                                                             (coe v20) (coe v21))
                                                          (coe v16)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1084
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1052
                                                                (coe v25) (coe v26)
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                   (coe
                                                                      MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                                                                      (coe
                                                                         MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                               (coe v0))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                                                            (coe v0))))
                                                                   v27
                                                                   (coe
                                                                      du_regRU_2438 (coe v0)
                                                                      (coe v6) (coe v27)))
                                                                (coe v28))
                                                             (coe v23) (coe v24)))
                                                       (coe v11) (coe v12)
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch._.regRU
d_regRU_2438 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2278 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_904 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1054 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1988 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_regRU_2438 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
             ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21 ~v22
  = du_regRU_2438 v0 v5 v17
du_regRU_2438 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_regRU_2438 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1342
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (coe
            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0)))))
      (coe v1)
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_548
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v2))
-- Ledger.Conway.Conformance.Epoch._.unregRU
d_unregRU_2440 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2278 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_904 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1054 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1988 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unregRU_2440 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
               ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21 ~v22
  = du_unregRU_2440 v0 v5 v17
du_unregRU_2440 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unregRU_2440 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1350
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
         erased
         (coe
            MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0)))))
      (coe v1)
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_548
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v2))
-- Ledger.Conway.Conformance.Epoch._.unregRU'
d_unregRU''_2442 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  Integer ->
  Integer ->
  T_Snapshots_2278 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_904 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1054 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_828 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1988 -> Integer
d_unregRU''_2442 v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                 ~v12 ~v13 ~v14 ~v15 ~v16 v17 ~v18 ~v19 ~v20 ~v21 ~v22
  = du_unregRU''_2442 v0 v5 v17
du_unregRU''_2442 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_unregRU''_2442 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
      (coe (\ v3 -> v3)) (coe du_unregRU_2440 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Conformance.Epoch.stakeDistr
d_stakeDistr_2446 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1034 ->
  MAlonzo.Code.Ledger.Certs.T_PState_904 -> T_Snapshot_2266
d_stakeDistr_2446 v0 ~v1 v2 v3 ~v4 = du_stakeDistr_2446 v0 v2 v3
du_stakeDistr_2446 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1034 ->
  T_Snapshot_2266
du_stakeDistr_2446 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.C_'10214'_'44'_'44'_'44'_'10215''7496'_1052 v3 v4 v5 v6
        -> coe
             C_'10214'_'44'_'10215''738'_2276
             (coe
                MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_504
                (coe
                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                (coe
                   MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                (coe
                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
                (coe
                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'7584''738'_1152
                   (coe du_stakeRelation_2466 (coe v0) (coe v1) (coe v5))))
             (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch._.m
d_m_2460 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_904 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_m_2460 v0 ~v1 v2 ~v3 ~v4 v5 ~v6 ~v7 = du_m_2460 v0 v2 v5
du_m_2460 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_m_2460 v0 v1 v2
  = let v3
          = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du_map_398
         (MAlonzo.Code.Axiom.Set.d_th_1470 (coe v3))
         (\ v4 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
              (coe
                 MAlonzo.Code.Ledger.Utxo.du_cbalance_1966 (coe v0)
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du__'8739''94'''__1184
                    (coe v1)
                    (coe
                       (\ v5 ->
                          coe
                            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                            (coe
                               MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                               (coe
                                  MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                  (coe
                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                                     (coe
                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                                        (coe
                                           MAlonzo.Code.Ledger.Crypto.d_khs_200
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                              (coe v0))))
                                     (coe
                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1224
                                           (coe v0))))))
                            (coe du_getStakeCred_2388 (coe v5))
                            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v4)))))))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_548
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556) (coe v2)))
-- Ledger.Conway.Conformance.Epoch._.stakeRelation
d_stakeRelation_2466 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Certs.T_PState_904 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_stakeRelation_2466 v0 ~v1 v2 ~v3 ~v4 v5 ~v6 ~v7
  = du_stakeRelation_2466 v0 v2 v5
du_stakeRelation_2466 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_stakeRelation_2466 v0 v1 v2
  = let v3
          = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__680
         (coe MAlonzo.Code.Axiom.Set.d_th_1470 (coe v3))
         (coe du_m_2460 (coe v0) (coe v1) (coe v2))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
-- Ledger.Conway.Conformance.Epoch.gaDepositStake
d_gaDepositStake_2468 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gaDepositStake_2468 v0 ~v1 v2 v3
  = du_gaDepositStake_2468 v0 v2 v3
du_gaDepositStake_2468 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_gaDepositStake_2468 v0 v1 v2
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1218
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1184 (coe v0))
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
         (coe
            MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
            (coe
               MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_globalConstants_1200 (coe v0)))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_khs_200
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_398
         (MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
              (coe
                 MAlonzo.Code.Ledger.Address.d_stake_84
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
         (coe du_govSt''_2478 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapFromPartialFun_1260
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            (\ v3 ->
               coe
                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1684
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1470
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe v2)
                 (coe
                    MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_820
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                 (coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                    (coe
                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1602
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                       erased
                       (let v4
                              = MAlonzo.Code.Ledger.Transaction.d_govStructure_2330 (coe v0) in
                        coe
                          (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
                             (coe v4))))
                    (coe
                       MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_820
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                    (let v4
                           = MAlonzo.Code.Axiom.Set.d_th_1470
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                     coe
                       (coe
                          MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v4
                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_550 (coe v2)))))))
         (coe du_govSt''_2478 (coe v1)))
-- Ledger.Conway.Conformance.Epoch._.govSt'
d_govSt''_2478 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_2478 ~v0 ~v1 v2 ~v3 = du_govSt''_2478 v2
du_govSt''_2478 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_2478 v0
  = let v1
          = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du_map_398
         (MAlonzo.Code.Axiom.Set.d_th_1470 (coe v1))
         (coe
            MAlonzo.Code.Class.Bifunctor.du_map'8322'_122
            (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
            (coe
               (\ v2 ->
                  MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_792 (coe v2))))
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_428
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe v0)))
-- Ledger.Conway.Conformance.Epoch.mkStakeDistrs
d_mkStakeDistrs_2490 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_Snapshot_2266 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1952
d_mkStakeDistrs_2490 v0 ~v1 v2 v3 v4 v5
  = du_mkStakeDistrs_2490 v0 v2 v3 v4 v5
du_mkStakeDistrs_2490 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_Snapshot_2266 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1952
du_mkStakeDistrs_2490 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_11367
      (case coe v1 of
         C_'10214'_'44'_'10215''738'_2276 v5 v6
           -> coe
                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1218
                (coe
                   MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_khs_200
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
                   (coe
                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
                (coe
                   MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_804
                   (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2330 (coe v0)))
                (coe
                   MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                (coe
                   MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                   (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                   (coe
                      MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                      (coe
                         MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                   (coe
                      MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                         (coe
                            MAlonzo.Code.Ledger.Crypto.d_khs_200
                            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
                      (coe
                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1224 (coe v0))))
                   v5 (coe du_gaDepositStake_2468 (coe v0) (coe v2) (coe v3)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Epoch._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2500 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2500 = C_SNAP_2530
-- Ledger.Conway.Conformance.Epoch._.certState
d_certState_2504 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_23707 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070
d_certState_2504 ~v0 ~v1 v2 = du_certState_2504 v2
du_certState_2504 ::
  T_GeneralizeTel_23707 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1070
du_certState_2504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2188
      (coe d_'46'generalizedField'45'lstate_23697 (coe v0))
-- Ledger.Conway.Conformance.Epoch._.utxoSt
d_utxoSt_2508 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_23707 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924
d_utxoSt_2508 ~v0 ~v1 v2 = du_utxoSt_2508 v2
du_utxoSt_2508 ::
  T_GeneralizeTel_23707 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1924
du_utxoSt_2508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2184
      (coe d_'46'generalizedField'45'lstate_23697 (coe v0))
-- Ledger.Conway.Conformance.Epoch._.fees
d_fees_2516 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_23707 -> Integer
d_fees_2516 ~v0 ~v1 v2 = du_fees_2516 v2
du_fees_2516 :: T_GeneralizeTel_23707 -> Integer
du_fees_2516 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_fees_1936
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2184
         (coe d_'46'generalizedField'45'lstate_23697 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._.utxo
d_utxo_2518 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_23707 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2518 ~v0 ~v1 v2 = du_utxo_2518 v2
du_utxo_2518 ::
  T_GeneralizeTel_23707 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2518 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1934
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2184
         (coe d_'46'generalizedField'45'lstate_23697 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._.dState
d_dState_2522 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_23707 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1034
d_dState_2522 ~v0 ~v1 v2 = du_dState_2522 v2
du_dState_2522 ::
  T_GeneralizeTel_23707 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1034
du_dState_2522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1078
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2188
         (coe d_'46'generalizedField'45'lstate_23697 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._.pState
d_pState_2526 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_23707 -> MAlonzo.Code.Ledger.Certs.T_PState_904
d_pState_2526 ~v0 ~v1 v2 = du_pState_2526 v2
du_pState_2526 ::
  T_GeneralizeTel_23707 -> MAlonzo.Code.Ledger.Certs.T_PState_904
du_pState_2526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1080
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2188
         (coe d_'46'generalizedField'45'lstate_23697 (coe v0)))
-- Ledger.Conway.Conformance.Epoch._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__2532 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'EPOCH'10632'__2532
  = C_EPOCH_2606 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
                 T__'8866'_'8640''10631'_'44'SNAP'10632'__2500
-- Ledger.Conway.Conformance.Epoch._.ccHotKeys
d_ccHotKeys_2600 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_30835 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2600 ~v0 ~v1 v2 = du_ccHotKeys_2600 v2
du_ccHotKeys_2600 ::
  T_GeneralizeTel_30835 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_1064
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1082
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2188
            (coe d_'46'generalizedField'45'ls_30821 (coe v0))))
-- Ledger.Conway.Conformance.Epoch._.dreps
d_dreps_2604 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1710 ->
  T_GeneralizeTel_30835 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2604 ~v0 ~v1 v2 = du_dreps_2604 v2
du_dreps_2604 ::
  T_GeneralizeTel_30835 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_1062
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1082
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2188
            (coe d_'46'generalizedField'45'ls_30821 (coe v0))))
-- Ledger.Conway.Conformance.Epoch._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2608 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2608
  = C_NEWEPOCH'45'New_2612 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_NEWEPOCH'45'Not'45'New_2614 |
    C_NEWEPOCH'45'No'45'Reward'45'Update_2616 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Epoch..generalizedField-lstate
d_'46'generalizedField'45'lstate_23697 ::
  T_GeneralizeTel_23707 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2176
d_'46'generalizedField'45'lstate_23697 v0
  = case coe v0 of
      C_mkGeneralizeTel_23709 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-mark
d_'46'generalizedField'45'mark_23699 ::
  T_GeneralizeTel_23707 -> T_Snapshot_2266
d_'46'generalizedField'45'mark_23699 v0
  = case coe v0 of
      C_mkGeneralizeTel_23709 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-set
d_'46'generalizedField'45'set_23701 ::
  T_GeneralizeTel_23707 -> T_Snapshot_2266
d_'46'generalizedField'45'set_23701 v0
  = case coe v0 of
      C_mkGeneralizeTel_23709 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-go
d_'46'generalizedField'45'go_23703 ::
  T_GeneralizeTel_23707 -> T_Snapshot_2266
d_'46'generalizedField'45'go_23703 v0
  = case coe v0 of
      C_mkGeneralizeTel_23709 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_23705 ::
  T_GeneralizeTel_23707 -> Integer
d_'46'generalizedField'45'feeSS_23705 v0
  = case coe v0 of
      C_mkGeneralizeTel_23709 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.GeneralizeTel
d_GeneralizeTel_23707 a0 a1 = ()
data T_GeneralizeTel_23707
  = C_mkGeneralizeTel_23709 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2176
                            T_Snapshot_2266 T_Snapshot_2266 T_Snapshot_2266 Integer
-- Ledger.Conway.Conformance.Epoch..generalizedField-fut
d_'46'generalizedField'45'fut_30819 ::
  T_GeneralizeTel_30835 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1988
d_'46'generalizedField'45'fut_30819 v0
  = case coe v0 of
      C_mkGeneralizeTel_30837 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-ls
d_'46'generalizedField'45'ls_30821 ::
  T_GeneralizeTel_30835 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2176
d_'46'generalizedField'45'ls_30821 v0
  = case coe v0 of
      C_mkGeneralizeTel_30837 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-e
d_'46'generalizedField'45'e_30823 ::
  T_GeneralizeTel_30835 -> AgdaAny
d_'46'generalizedField'45'e_30823 v0
  = case coe v0 of
      C_mkGeneralizeTel_30837 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-acnt
d_'46'generalizedField'45'acnt_30825 ::
  T_GeneralizeTel_30835 -> MAlonzo.Code.Ledger.PParams.T_Acnt_146
d_'46'generalizedField'45'acnt_30825 v0
  = case coe v0 of
      C_mkGeneralizeTel_30837 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-ss'
d_'46'generalizedField'45'ss''_30827 ::
  T_GeneralizeTel_30835 -> T_Snapshots_2278
d_'46'generalizedField'45'ss''_30827 v0
  = case coe v0 of
      C_mkGeneralizeTel_30837 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-fut'
d_'46'generalizedField'45'fut''_30829 ::
  T_GeneralizeTel_30835 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1988
d_'46'generalizedField'45'fut''_30829 v0
  = case coe v0 of
      C_mkGeneralizeTel_30837 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-ss
d_'46'generalizedField'45'ss_30831 ::
  T_GeneralizeTel_30835 -> T_Snapshots_2278
d_'46'generalizedField'45'ss_30831 v0
  = case coe v0 of
      C_mkGeneralizeTel_30837 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch..generalizedField-es₀
d_'46'generalizedField'45'es'8320'_30833 ::
  T_GeneralizeTel_30835 -> MAlonzo.Code.Ledger.Enact.T_EnactState_828
d_'46'generalizedField'45'es'8320'_30833 v0
  = case coe v0 of
      C_mkGeneralizeTel_30837 v1 v2 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Epoch.GeneralizeTel
d_GeneralizeTel_30835 a0 a1 = ()
data T_GeneralizeTel_30835
  = C_mkGeneralizeTel_30837 MAlonzo.Code.Ledger.Ratify.T_RatifyState_1988
                            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2176 AgdaAny
                            MAlonzo.Code.Ledger.PParams.T_Acnt_146 T_Snapshots_2278
                            MAlonzo.Code.Ledger.Ratify.T_RatifyState_1988 T_Snapshots_2278
                            MAlonzo.Code.Ledger.Enact.T_EnactState_828
