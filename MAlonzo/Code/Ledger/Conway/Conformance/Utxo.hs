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

module MAlonzo.Code.Ledger.Conway.Conformance.Utxo where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Class.ToBool
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Integer.Ext
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Fees
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.HashMap
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _._≤ᵗ_
d__'8804''7511'__20 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__20 = erased
-- _.Addr
d_Addr_30 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Addr_30 = erased
-- _.THash
d_THash_54 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_54 = erased
-- _.Dec-isScript
d_Dec'45'isScript_62 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_62 ~v0 = du_Dec'45'isScript_62
du_Dec'45'isScript_62 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_62
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
-- _.DecEq-BaseAddr
d_DecEq'45'BaseAddr_76 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_76 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_190
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))
-- _.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_78 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_78 v0
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_192
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))
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
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Crypto.d_khs_200
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))
-- _.ExUnits
d_ExUnits_154 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ExUnits_154 = erased
-- _.GovProposal
d_GovProposal_164 a0 = ()
-- _.MemoryEstimate
d_MemoryEstimate_206 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_MemoryEstimate_206 = erased
-- _.NetworkId
d_NetworkId_214 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny
d_NetworkId_214 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
      (coe
         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v0))
-- _.PParams
d_PParams_234 a0 = ()
-- _.ScriptHash
d_ScriptHash_290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_290 = erased
-- _.Slot
d_Slot_338 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_338 = erased
-- _.Tx
d_Tx_368 a0 = ()
-- _.TxBody
d_TxBody_370 a0 = ()
-- _.TxOut
d_TxOut_376 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_376 = erased
-- _.TxOutʰ
d_TxOut'688'_378 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut'688'_378 = erased
-- _.UTxO
d_UTxO_382 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_382 = erased
-- _.Value
d_Value_400 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_400 = erased
-- _.coin
d_coin_428 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_428 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0))
-- _.getValueʰ
d_getValue'688'_464 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_464 ~v0 = du_getValue'688'_464
du_getValue'688'_464 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_464
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2704
-- _.inject
d_inject_474 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny
d_inject_474 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0))
-- _.netId
d_netId_516 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_516 ~v0 = du_netId_516
du_netId_516 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_516 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- _.txOutHash
d_txOutHash_578 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_578 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2694 (coe v0)
-- _.GovProposal.action
d_action_718 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716
d_action_718 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_790 (coe v0)
-- _.GovProposal.anchor
d_anchor_720 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706
d_anchor_720 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_800 (coe v0)
-- _.GovProposal.deposit
d_deposit_722 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 -> Integer
d_deposit_722 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_796 (coe v0)
-- _.GovProposal.policy
d_policy_724 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  Maybe AgdaAny
d_policy_724 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_794 (coe v0)
-- _.GovProposal.prevAction
d_prevAction_726 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 -> AgdaAny
d_prevAction_726 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_792 (coe v0)
-- _.GovProposal.returnAddr
d_returnAddr_728 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_728 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_798 (coe v0)
-- _.GovernanceActions.GovProposal
d_GovProposal_770 a0 = ()
-- _.PParams.Emax
d_Emax_922 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_Emax_922 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_352 (coe v0)
-- _.PParams.a
d_a_924 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_924 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_328 (coe v0)
-- _.PParams.a0
d_a0_926 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_926 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_356 (coe v0)
-- _.PParams.b
d_b_928 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_928 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_330 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_930 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_930 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_368 (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_932 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_932 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_366 (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_934 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_934 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_336 (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_936 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_936 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_358 (coe v0)
-- _.PParams.costmdls
d_costmdls_938 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_costmdls_938 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_360 (coe v0)
-- _.PParams.drepActivity
d_drepActivity_940 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_drepActivity_940 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_376 (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_942 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_942 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_374 (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_944 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_944 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_946 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_946 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372 (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_948 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_948 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_370 (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_950 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_950 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_332 (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_952 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxBlockExUnits_952 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_320 (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_954 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_954 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_312 (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_956 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_956 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_324 (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_958 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_958 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_316 (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_960 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_960 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_344 (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_962 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_962 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342 (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_964 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_maxTxExUnits_964 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_318 (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_966 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_966 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_314 (coe v0)
-- _.PParams.maxValSize
d_maxValSize_968 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_968 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_322 (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_970 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_970 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_340
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_972 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_972 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_350 (coe v0)
-- _.PParams.nopt
d_nopt_974 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_974 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_354 (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_976 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_976 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_334 (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_978 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_978 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v0)
-- _.PParams.prices
d_prices_980 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> AgdaAny
d_prices_980 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_338 (coe v0)
-- _.PParams.pv
d_pv_982 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_982 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_326 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_984 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_984 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_348 (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_986 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_refScriptCostStride_986 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_346 (coe v0)
-- _.Tx.body
d_body_1400 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568
d_body_1400 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v0)
-- _.Tx.isValid
d_isValid_1402 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Bool
d_isValid_1402 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2684 (coe v0)
-- _.Tx.txAD
d_txAD_1404 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Maybe AgdaAny
d_txAD_1404 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2686 (coe v0)
-- _.Tx.wits
d_wits_1406 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2650
d_wits_1406 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2682 (coe v0)
-- _.TxBody.collateral
d_collateral_1410 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1410 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2644 (coe v0)
-- _.TxBody.curTreasury
d_curTreasury_1412 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Maybe Integer
d_curTreasury_1412 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2638 (coe v0)
-- _.TxBody.mint
d_mint_1414 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> AgdaAny
d_mint_1414 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2618 (coe v0)
-- _.TxBody.refInputs
d_refInputs_1416 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1416 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2612 (coe v0)
-- _.TxBody.reqSigHash
d_reqSigHash_1418 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> [AgdaAny]
d_reqSigHash_1418 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2646 (coe v0)
-- _.TxBody.scriptIntHash
d_scriptIntHash_1420 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Maybe AgdaAny
d_scriptIntHash_1420 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2648 (coe v0)
-- _.TxBody.txADhash
d_txADhash_1422 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Maybe AgdaAny
d_txADhash_1422 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2634 (coe v0)
-- _.TxBody.txNetworkId
d_txNetworkId_1424 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Maybe AgdaAny
d_txNetworkId_1424 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2636 (coe v0)
-- _.TxBody.txcerts
d_txcerts_1426 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856]
d_txcerts_1426 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2622 (coe v0)
-- _.TxBody.txdonation
d_txdonation_1428 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Integer
d_txdonation_1428 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2630 (coe v0)
-- _.TxBody.txfee
d_txfee_1430 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Integer
d_txfee_1430 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2616 (coe v0)
-- _.TxBody.txid
d_txid_1432 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> AgdaAny
d_txid_1432 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2642 (coe v0)
-- _.TxBody.txins
d_txins_1434 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1434 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2610 (coe v0)
-- _.TxBody.txouts
d_txouts_1436 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1436 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2614 (coe v0)
-- _.TxBody.txprop
d_txprop_1438 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776]
d_txprop_1438 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2628 (coe v0)
-- _.TxBody.txsize
d_txsize_1440 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Integer
d_txsize_1440 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2640 (coe v0)
-- _.TxBody.txup
d_txup_1442 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1442 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2632 (coe v0)
-- _.TxBody.txvldt
d_txvldt_1444 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1444 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2620 (coe v0)
-- _.TxBody.txvote
d_txvote_1446 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
d_txvote_1446 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2626 (coe v0)
-- _.TxBody.txwdrls
d_txwdrls_1448 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1448 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2624 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1534 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1534 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.d_collectPhaseTwoScriptInputs_2350
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo._.evalScripts
d_evalScripts_1544 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1544 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.d_evalScripts_2368
      (coe v0) (coe v1)
-- Ledger.Conway.Conformance.Utxo._.DCert
d_DCert_1654 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1668 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1668 v0 ~v1
  = du_DecEq'45'DepositPurpose_1668 v0
du_DecEq'45'DepositPurpose_1668 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1668 v0
  = let v1
          = MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848 (coe v1))
-- Ledger.Conway.Conformance.Utxo._.DepositPurpose
d_DepositPurpose_1672 a0 a1 = ()
-- Ledger.Conway.Conformance.Utxo._.Deposits
d_Deposits_1674 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 -> ()
d_Deposits_1674 = erased
-- Ledger.Conway.Conformance.Utxo.certDepositUtxo
d_certDepositUtxo_1862 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDepositUtxo_1862 ~v0 ~v1 v2 v3
  = du_certDepositUtxo_1862 v2 v3
du_certDepositUtxo_1862 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDepositUtxo_1862 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_578
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1470
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Certs.C_delegate_858 v3 v4 v5 v6
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_CredentialDeposit_838 (coe v3))
                   (coe v6))
         MAlonzo.Code.Ledger.Certs.C_regpool_862 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_PoolDeposit_840 (coe v3))
                   (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_334 (coe v1)))
         MAlonzo.Code.Ledger.Certs.C_regdrep_866 v3 v4 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Ledger.Certs.C_DRepDeposit_842 (coe v3))
                   (coe v4))
         _ -> coe v2)
-- Ledger.Conway.Conformance.Utxo.updateCertDeposits
d_updateCertDeposits_1876 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_1876 v0 ~v1 ~v2 v3 v4
  = du_updateCertDeposits_1876 v0 v3 v4
du_updateCertDeposits_1876 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_1876 v0 v1 v2
  = case coe v1 of
      [] -> coe v2
      (:) v3 v4
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1350
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1470
                (coe
                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
             (coe
                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                erased
                (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                   (coe
                      MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0))))
             (coe
                MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                (coe
                   MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                   (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0)))
                (coe du_updateCertDeposits_1876 (coe v0) (coe v4) (coe v2))
                (coe
                   MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_1100
                   (coe v3)))
             (coe
                MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certRefund_1110
                (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.updateCertDepositsUtxo
d_updateCertDepositsUtxo_1888 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDepositsUtxo_1888 v0 ~v1 v2 v3 v4
  = du_updateCertDepositsUtxo_1888 v0 v2 v3 v4
du_updateCertDepositsUtxo_1888 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDepositsUtxo_1888 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0)))
             (coe
                du_updateCertDepositsUtxo_1888 (coe v0) (coe v1) (coe v5) (coe v3))
             (coe du_certDepositUtxo_1862 (coe v4) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.updateProposalDeposits
d_updateProposalDeposits_1900 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_1900 v0 ~v1 v2 v3 v4 v5
  = du_updateProposalDeposits_1900 v0 v2 v3 v4 v5
du_updateProposalDeposits_1900 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_1900 v0 v1 v2 v3 v4
  = case coe v1 of
      [] -> coe v4
      (:) v5 v6
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__502
             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
             (MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
                (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0)))
             (coe
                du_updateProposalDeposits_1900 (coe v0) (coe v6) (coe v2) (coe v3)
                (coe v4))
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_746
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1470
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Ledger.Certs.C_GovActionDeposit_844
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                         (coe MAlonzo.Code.Data.List.Base.du_length_284 v6)))
                   (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.updateDeposits
d_updateDeposits_1912 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1912 v0 ~v1 v2 v3 v4
  = du_updateDeposits_1912 v0 v2 v3 v4
du_updateDeposits_1912 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1912 v0 v1 v2 v3
  = coe
      du_updateCertDepositsUtxo_1888 (coe v0) (coe v1)
      (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2622 (coe v2))
      (coe
         du_updateProposalDeposits_1900 (coe v0)
         (coe MAlonzo.Code.Ledger.Transaction.d_txprop_2628 (coe v2))
         (coe MAlonzo.Code.Ledger.Transaction.d_txid_2642 (coe v2))
         (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372 (coe v1))
         (coe v3))
-- Ledger.Conway.Conformance.Utxo.UTxOEnv
d_UTxOEnv_1964 a0 a1 = ()
data T_UTxOEnv_1964
  = C_UTxOEnv'46'constructor_10057 AgdaAny
                                   MAlonzo.Code.Ledger.PParams.T_PParams_244 Integer
-- Ledger.Conway.Conformance.Utxo.UTxOEnv.slot
d_slot_1972 :: T_UTxOEnv_1964 -> AgdaAny
d_slot_1972 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_10057 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.UTxOEnv.pparams
d_pparams_1974 ::
  T_UTxOEnv_1964 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_1974 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_10057 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.UTxOEnv.treasury
d_treasury_1976 :: T_UTxOEnv_1964 -> Integer
d_treasury_1976 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_10057 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.UTxOState
d_UTxOState_1978 a0 a1 = ()
data T_UTxOState_1978
  = C_'10214'_'44'_'44'_'44'_'10215''7512'_1996 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer
-- Ledger.Conway.Conformance.Utxo.UTxOState.utxo
d_utxo_1988 ::
  T_UTxOState_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1988 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1996 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.UTxOState.fees
d_fees_1990 :: T_UTxOState_1978 -> Integer
d_fees_1990 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1996 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.UTxOState.deposits
d_deposits_1992 ::
  T_UTxOState_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1992 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1996 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.UTxOState.donations
d_donations_1994 :: T_UTxOState_1978 -> Integer
d_donations_1994 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1996 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo._*↓_
d__'42''8595'__2006 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
d__'42''8595'__2006 ~v0 v1 v2 = du__'42''8595'__2006 v1 v2
du__'42''8595'__2006 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
du__'42''8595'__2006 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
      (coe
         MAlonzo.Code.Data.Rational.Base.d_floor_346
         (coe
            MAlonzo.Code.Data.Rational.Base.d__'42'__276 (coe v0)
            (coe
               MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v1)
               (coe (1 :: Integer)))))
-- Ledger.Conway.Conformance.Utxo.isTwoPhaseScriptAddress
d_isTwoPhaseScriptAddress_2012 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isTwoPhaseScriptAddress_2012 v0 ~v1 v2 v3 v4
  = du_isTwoPhaseScriptAddress_2012 v0 v2 v3 v4
du_isTwoPhaseScriptAddress_2012 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isTwoPhaseScriptAddress_2012 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
         (coe MAlonzo.Code.Ledger.Address.du_payCred_108 (coe v3)))
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Class.ToBool.du_if_then_else__46
              (coe MAlonzo.Code.Class.ToBool.du_ToBool'45'Maybe_106)
              (coe
                 MAlonzo.Code.Ledger.Transaction.d_lookupScriptHash_2790 (coe v0)
                 (coe
                    MAlonzo.Code.Ledger.Address.du_getScriptHash_184 (coe v3) (coe v4))
                 (coe v1) (coe v2))
              (coe
                 MAlonzo.Code.Level.C_lift_20
                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
              (coe
                 (\ v5 ->
                    coe MAlonzo.Code.Ledger.Transaction.du_isP2Script_2804 (coe v5)))
              (coe (\ v5 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))))
      (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
-- Ledger.Conway.Conformance.Utxo.getDataHashes
d_getDataHashes_2024 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_2024 ~v0 ~v1 v2 = du_getDataHashes_2024 v2
du_getDataHashes_2024 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_2024 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_576
      (MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30)
      (coe
         MAlonzo.Code.Axiom.Set.du_mapPartial_576
         (MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (\ v1 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))))
         v0)
-- Ledger.Conway.Conformance.Utxo.getInputHashes
d_getInputHashes_2028 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_2028 v0 ~v1 v2 v3
  = du_getInputHashes_2028 v0 v2 v3
du_getInputHashes_2028 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_2028 v0 v1 v2
  = coe
      du_getDataHashes_2024
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'738'_1160
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
              (coe
                 du_isTwoPhaseScriptAddress_2012 (coe v0) (coe v1) (coe v2)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
         (coe
            MAlonzo.Code.Class.IsSet.du_range_550
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
            (coe
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
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1206 (coe v0))))
               (coe v2)
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_2610
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1))))))
-- Ledger.Conway.Conformance.Utxo.totExUnits
d_totExUnits_2084 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> AgdaAny
d_totExUnits_2084 v0 ~v1 v2 = du_totExUnits_2084 v0 v2
du_totExUnits_2084 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> AgdaAny
du_totExUnits_2084 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1206 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
            (coe
               MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
               (coe
                  MAlonzo.Code.Ledger.Script.d_Data'688'_190
                  (coe
                     MAlonzo.Code.Ledger.Script.d_ps_452
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                        (coe v0))))))
         (coe
            MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_452
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0))))
      (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2666
         (coe MAlonzo.Code.Ledger.Transaction.d_wits_2682 (coe v1)))
-- Ledger.Conway.Conformance.Utxo._._.outs
d_outs_2104 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_2104 ~v0 ~v1 v2 = du_outs_2104 v2
du_outs_2104 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_2104 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_868
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe MAlonzo.Code.Ledger.Transaction.d_txid_2642 (coe v0))
              (coe v1)))
      (coe MAlonzo.Code.Ledger.Transaction.d_txouts_2614 (coe v0))
-- Ledger.Conway.Conformance.Utxo._._.balance
d_balance_2110 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_2110 v0 ~v1 v2 = du_balance_2110 v0 v2
du_balance_2110 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_2110 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208 (coe v0))
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1206 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_190
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_192
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))))
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            (MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218
               (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0)))
            (coe
               MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                           (coe
                              MAlonzo.Code.Ledger.Script.d_Data'688'_190
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_ps_452
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                                    (coe v0))))))
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                           (coe
                              MAlonzo.Code.Ledger.Script.d_Data'688'_190
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_ps_452
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                                    (coe v0))))))))
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0)))
      (coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2704)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2694 (coe v0))
         (coe v1))
-- Ledger.Conway.Conformance.Utxo._._.cbalance
d_cbalance_2116 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_2116 v0 ~v1 v2 = du_cbalance_2116 v0 v2
du_cbalance_2116 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_2116 v0 v1
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0))
      (coe du_balance_2110 (coe v0) (coe v1))
-- Ledger.Conway.Conformance.Utxo._._.refScriptsSize
d_refScriptsSize_2120 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Integer
d_refScriptsSize_2120 v0 v1 v2 v3
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
      (coe (\ v4 -> v4))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1470
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Ledger.Abstract.d_scriptSize_1744 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Set.HashMap.du_setToHashMap_18
            (coe
               MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_448
               (MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0))
               erased erased erased
               (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
                  (coe
                     MAlonzo.Code.Ledger.Script.d_p1s_428
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0))))
               (MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
                  (coe
                     MAlonzo.Code.Ledger.Script.d_ps_452
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0)))))
            (coe
               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))
            (coe
               MAlonzo.Code.Ledger.Transaction.d_refScripts_2728 (coe v0) (coe v3)
               (coe v2))))
-- Ledger.Conway.Conformance.Utxo._._.minfee
d_minfee_2130 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Integer
d_minfee_2130 v0 v1 v2 v3 v4
  = coe
      addInt
      (coe
         addInt
         (coe
            addInt
            (coe
               MAlonzo.Code.Ledger.Abstract.d_txscriptfee_1736 v1
               (MAlonzo.Code.Ledger.PParams.d_prices_338 (coe v2))
               (coe du_totExUnits_2084 (coe v0) (coe v4)))
            (coe
               MAlonzo.Code.Ledger.Fees.du_scriptsCost_1496 (coe v2)
               (coe d_refScriptsSize_2120 (coe v0) (coe v1) (coe v3) (coe v4))))
         (coe MAlonzo.Code.Ledger.PParams.d_b_330 (coe v2)))
      (coe
         mulInt (coe MAlonzo.Code.Ledger.PParams.d_a_328 (coe v2))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txsize_2640
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v4))))
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2138 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2138
  = C_Scripts'45'Yes_2218 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2298 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.txdonation
d_txdonation_2176 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_UTxOEnv_1964 ->
  T_UTxOState_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Integer
d_txdonation_2176 ~v0 ~v1 ~v2 v3 = du_txdonation_2176 v3
du_txdonation_2176 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Integer
du_txdonation_2176 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdonation_2630
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.txfee
d_txfee_2178 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_UTxOEnv_1964 ->
  T_UTxOState_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Integer
d_txfee_2178 ~v0 ~v1 ~v2 v3 = du_txfee_2178 v3
du_txfee_2178 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Integer
du_txfee_2178 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txfee_2616
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2182 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_UTxOEnv_1964 ->
  T_UTxOState_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2182 ~v0 ~v1 ~v2 v3 = du_txins_2182 v3
du_txins_2182 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2182 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2610
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2200 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_UTxOEnv_1964 ->
  T_UTxOState_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2200 ~v0 v1 ~v2 ~v3 = du_pparams_2200 v1
du_pparams_2200 ::
  T_UTxOEnv_1964 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2200 v0 = coe d_pparams_1974 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2202 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_UTxOEnv_1964 ->
  T_UTxOState_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> AgdaAny
d_slot_2202 ~v0 v1 ~v2 ~v3 = du_slot_2202 v1
du_slot_2202 :: T_UTxOEnv_1964 -> AgdaAny
du_slot_2202 v0 = coe d_slot_1972 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2204 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_UTxOEnv_1964 ->
  T_UTxOState_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Integer
d_treasury_2204 ~v0 v1 ~v2 ~v3 = du_treasury_2204 v1
du_treasury_2204 :: T_UTxOEnv_1964 -> Integer
du_treasury_2204 v0 = coe d_treasury_1976 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.deposits
d_deposits_2208 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_UTxOEnv_1964 ->
  T_UTxOState_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2208 ~v0 ~v1 v2 ~v3 = du_deposits_2208 v2
du_deposits_2208 ::
  T_UTxOState_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2208 v0 = coe d_deposits_1992 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.donations
d_donations_2210 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_UTxOEnv_1964 ->
  T_UTxOState_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Integer
d_donations_2210 ~v0 ~v1 v2 ~v3 = du_donations_2210 v2
du_donations_2210 :: T_UTxOState_1978 -> Integer
du_donations_2210 v0 = coe d_donations_1994 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.fees
d_fees_2212 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_UTxOEnv_1964 ->
  T_UTxOState_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Integer
d_fees_2212 ~v0 ~v1 v2 ~v3 = du_fees_2212 v2
du_fees_2212 :: T_UTxOState_1978 -> Integer
du_fees_2212 v0 = coe d_fees_1990 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2214 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_UTxOEnv_1964 ->
  T_UTxOState_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2214 ~v0 ~v1 v2 ~v3 = du_utxo_2214 v2
du_utxo_2214 ::
  T_UTxOState_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2214 v0 = coe d_utxo_1988 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.collateral
d_collateral_2238 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_UTxOEnv_1964 ->
  T_UTxOState_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2238 ~v0 ~v1 ~v2 v3 = du_collateral_2238 v3
du_collateral_2238 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2238 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_2644
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2280 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_UTxOEnv_1964 ->
  T_UTxOState_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2280 ~v0 v1 ~v2 ~v3 = du_pparams_2280 v1
du_pparams_2280 ::
  T_UTxOEnv_1964 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2280 v0 = coe d_pparams_1974 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2282 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_UTxOEnv_1964 ->
  T_UTxOState_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> AgdaAny
d_slot_2282 ~v0 v1 ~v2 ~v3 = du_slot_2282 v1
du_slot_2282 :: T_UTxOEnv_1964 -> AgdaAny
du_slot_2282 v0 = coe d_slot_1972 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2284 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_UTxOEnv_1964 ->
  T_UTxOState_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Integer
d_treasury_2284 ~v0 v1 ~v2 ~v3 = du_treasury_2284 v1
du_treasury_2284 :: T_UTxOEnv_1964 -> Integer
du_treasury_2284 v0 = coe d_treasury_1976 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.deposits
d_deposits_2288 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_UTxOEnv_1964 ->
  T_UTxOState_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2288 ~v0 ~v1 v2 ~v3 = du_deposits_2288 v2
du_deposits_2288 ::
  T_UTxOState_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2288 v0 = coe d_deposits_1992 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.donations
d_donations_2290 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_UTxOEnv_1964 ->
  T_UTxOState_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Integer
d_donations_2290 ~v0 ~v1 v2 ~v3 = du_donations_2290 v2
du_donations_2290 :: T_UTxOState_1978 -> Integer
du_donations_2290 v0 = coe d_donations_1994 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.fees
d_fees_2292 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_UTxOEnv_1964 ->
  T_UTxOState_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Integer
d_fees_2292 ~v0 ~v1 v2 ~v3 = du_fees_2292 v2
du_fees_2292 :: T_UTxOState_1978 -> Integer
du_fees_2292 v0 = coe d_fees_1990 (coe v0)
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2294 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_UTxOEnv_1964 ->
  T_UTxOState_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2294 ~v0 ~v1 v2 ~v3 = du_utxo_2294 v2
du_utxo_2294 ::
  T_UTxOState_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2294 v0 = coe d_utxo_1988 (coe v0)
-- Ledger.Conway.Conformance.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2300 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_UTxOEnv_1964 ->
  T_UTxOState_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2300 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.d_evalScripts_2368
               (coe v0) (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.d_collectPhaseTwoScriptInputs_2350
                  (coe v0) (coe v1) (coe d_pparams_1974 (coe v2)) (coe v4)
                  (coe d_utxo_1988 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2684 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2684 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2302 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_UTxOEnv_1964 ->
  T_UTxOState_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2302 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.d_evalScripts_2368
               (coe v0) (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.ScriptValidation.d_collectPhaseTwoScriptInputs_2350
                  (coe v0) (coe v1) (coe d_pparams_1974 (coe v2)) (coe v4)
                  (coe d_utxo_1988 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2684 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
            (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2684 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Conway.Conformance.Utxo.inInterval
d_inInterval_2306 a0 a1 a2 a3 = ()
data T_inInterval_2306
  = C_both_2314 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_lower_2318 AgdaAny | C_upper_2322 AgdaAny | C_none_2324
-- Ledger.Conway.Conformance.Utxo.HasCoin-UTxO
d_HasCoin'45'UTxO_2326 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_2326 v0 ~v1 = du_HasCoin'45'UTxO_2326 v0
du_HasCoin'45'UTxO_2326 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_2326 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe du_cbalance_2116 (coe v0))
-- Ledger.Conway.Conformance.Utxo.Dec-inInterval
d_Dec'45'inInterval_2328 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_2328 v0 ~v1 v2 v3
  = du_Dec'45'inInterval_2328 v0 v2 v3
du_Dec'45'inInterval_2328 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_2328 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v2 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
           -> case coe v3 of
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
                  -> case coe v4 of
                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
                         -> let v7
                                  = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                      (coe
                                         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_232
                                         (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532
                                               (coe v0)))
                                         v5 v1) in
                            coe
                              (let v8
                                     = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                         (coe
                                            MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_232
                                            (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532
                                                  (coe v0)))
                                            v1 v6) in
                               coe
                                 (case coe v7 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                                      -> if coe v9
                                           then case coe v10 of
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                                    -> case coe v8 of
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v12 v13
                                                           -> if coe v12
                                                                then case coe v13 of
                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v14
                                                                         -> coe
                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                              (coe v12)
                                                                              (coe
                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                 (coe
                                                                                    C_both_2314
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe v11)
                                                                                       (coe v14))))
                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                else coe
                                                                       seq (coe v13)
                                                                       (coe
                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                          (coe v12)
                                                                          (coe
                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                           else coe
                                                  seq (coe v10)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                     (coe v9)
                                                     (coe
                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                    _ -> MAlonzo.RTE.mazUnreachableError))
                       MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                         -> let v6
                                  = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                      (coe
                                         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_232
                                         (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532
                                               (coe v0)))
                                         v5 v1) in
                            coe
                              (case coe v6 of
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                                   -> if coe v7
                                        then case coe v8 of
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
                                                 -> coe
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                      (coe v7)
                                                      (coe
                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                         (coe C_lower_2318 v9))
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        else coe
                                               seq (coe v8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                       _ -> MAlonzo.RTE.mazUnreachableError
                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                  -> case coe v4 of
                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
                         -> let v6
                                  = MAlonzo.Code.Class.Decidable.Core.d_dec_16
                                      (coe
                                         MAlonzo.Code.Class.HasOrder.Core.d_dec'45''8804'_232
                                         (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532
                                               (coe v0)))
                                         v1 v5) in
                            coe
                              (case coe v6 of
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                                   -> if coe v7
                                        then case coe v8 of
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
                                                 -> coe
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                      (coe v7)
                                                      (coe
                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                         (coe C_upper_2322 v9))
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        else coe
                                               seq (coe v8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                       MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                         -> coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                              (coe
                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                 (coe C_none_2324))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Utxo.HasCoin-UTxOState
d_HasCoin'45'UTxOState_2430 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_2430 v0 ~v1
  = du_HasCoin'45'UTxOState_2430 v0
du_HasCoin'45'UTxOState_2430 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_2430 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            addInt
              (coe
                 addInt
                 (coe
                    addInt (coe du_cbalance_2116 (coe v0) (coe d_utxo_1988 (coe v1)))
                    (coe d_donations_1994 (coe v1)))
                 (coe d_fees_1990 (coe v1)))
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
                 (let v2
                        = MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0) in
                  coe
                    (coe
                       MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848 (coe v2)))
                 (coe
                    MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                    (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
                 (coe
                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
                 (coe (\ v2 -> v2)) (coe d_deposits_1992 (coe v1)))))
-- Ledger.Conway.Conformance.Utxo._=>ᵇ_
d__'61''62''7495'__2434 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  Bool -> Bool -> Bool
d__'61''62''7495'__2434 ~v0 v1 v2 = du__'61''62''7495'__2434 v1 v2
du__'61''62''7495'__2434 :: Bool -> Bool -> Bool
du__'61''62''7495'__2434 v0 v1
  = coe
      MAlonzo.Code.Class.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Class.ToBool.d_ToBool'45'Bool_94) (coe v0)
      (coe
         MAlonzo.Code.Level.C_lift_20
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      (coe (\ v2 -> v1))
      (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
-- Ledger.Conway.Conformance.Utxo._≤ᵇ_
d__'8804''7495'__2440 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  Integer -> Integer -> Bool
d__'8804''7495'__2440 ~v0 ~v1 v2 v3 = du__'8804''7495'__2440 v2 v3
du__'8804''7495'__2440 :: Integer -> Integer -> Bool
du__'8804''7495'__2440 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
      (coe
         MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
         (coe
            MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2802 (coe v0)
            (coe v1)))
-- Ledger.Conway.Conformance.Utxo._≥ᵇ_
d__'8805''7495'__2442 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  Integer -> Integer -> Bool
d__'8805''7495'__2442 ~v0 ~v1 v2 v3 = du__'8805''7495'__2442 v2 v3
du__'8805''7495'__2442 :: Integer -> Integer -> Bool
du__'8805''7495'__2442 v0 v1
  = coe du__'8804''7495'__2440 (coe v1) (coe v0)
-- Ledger.Conway.Conformance.Utxo.≟-∅ᵇ
d_'8799''45''8709''7495'_2454 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
d_'8799''45''8709''7495'_2454 ~v0 ~v1 v2 v3
  = du_'8799''45''8709''7495'_2454 v2 v3
du_'8799''45''8709''7495'_2454 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
du_'8799''45''8709''7495'_2454 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
      (coe
         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
         (coe
            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
               (coe v0)))
         (coe v1)
         (coe
            MAlonzo.Code.Axiom.Set.du_'8709'_442
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
-- Ledger.Conway.Conformance.Utxo.coinPolicies
d_coinPolicies_2458 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 -> [AgdaAny]
d_coinPolicies_2458 v0 ~v1 = du_coinPolicies_2458 v0
du_coinPolicies_2458 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny]
du_coinPolicies_2458 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0))
         (1 :: Integer))
-- Ledger.Conway.Conformance.Utxo.isAdaOnlyᵇ
d_isAdaOnly'7495'_2460 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  AgdaAny -> Bool
d_isAdaOnly'7495'_2460 v0 ~v1 v2 = du_isAdaOnly'7495'_2460 v0 v2
du_isAdaOnly'7495'_2460 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Bool
du_isAdaOnly'7495'_2460 v0 v1
  = coe
      MAlonzo.Code.Class.ToBool.du_toBool_64
      (coe MAlonzo.Code.Class.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe
               (\ v2 ->
                  coe
                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                    (coe
                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))
                    (coe v2) (coe du_coinPolicies_2458 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0)) v1))
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe
               (\ v2 ->
                  coe
                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                    (coe
                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))
                    (coe v2)
                    (coe
                       MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
                       (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0))
                       v1)))
            (coe du_coinPolicies_2458 (coe v0))))
-- Ledger.Conway.Conformance.Utxo.feesOK
d_feesOK_2464 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Bool
d_feesOK_2464 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      (coe
         du__'8804''7495'__2440
         (coe d_minfee_2130 (coe v0) (coe v1) (coe v2) (coe v4) (coe v3))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txfee_2616
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v3))))
      (coe
         MAlonzo.Code.Class.ToBool.du_if_then_else__46
         (coe MAlonzo.Code.Class.ToBool.d_ToBool'45'Bool_94)
         (coe
            MAlonzo.Code.Data.Bool.Base.d_not_22
            (coe
               MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
               (coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                        (coe
                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                           (coe
                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                              MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18
                              (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1206 (coe v0)))
                           (coe
                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                              (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_Data'688'_190
                                       (coe
                                          MAlonzo.Code.Ledger.Script.d_ps_452
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                                             (coe v0))))))
                              (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
                                 (coe
                                    MAlonzo.Code.Ledger.Script.d_ps_452
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                                       (coe v0))))))))
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du__'738'_550
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2666
                        (coe MAlonzo.Code.Ledger.Transaction.d_wits_2682 (coe v3))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_442
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))))
         (coe
            MAlonzo.Code.Level.C_lift_20
            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
         (coe
            (\ v5 ->
               MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                 (coe
                    MAlonzo.Code.Axiom.Set.du_all'7495'_1648
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                    (coe
                       (\ v6 ->
                          coe
                            MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                            (coe
                               MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_144
                               (coe
                                  MAlonzo.Code.Ledger.Address.du_payCred_108
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))))))
                    (coe du_collateralRange_2608 (coe v0) (coe v3) (coe v4)))
                 (coe
                    MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                    (coe
                       du_isAdaOnly'7495'_2460 (coe v0)
                       (coe du_bal_2610 (coe v0) (coe v3) (coe v4)))
                    (coe
                       MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                       (coe
                          du__'8805''7495'__2442
                          (coe
                             mulInt
                             (coe
                                MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
                                (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0))
                                (coe du_bal_2610 (coe v0) (coe v3) (coe v4)))
                             (coe (100 :: Integer)))
                          (coe
                             mulInt
                             (coe
                                MAlonzo.Code.Ledger.Transaction.d_txfee_2616
                                (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v3)))
                             (coe
                                MAlonzo.Code.Ledger.PParams.d_collateralPercentage_358 (coe v2))))
                       (coe
                          MAlonzo.Code.Data.Bool.Base.d_not_22
                          (coe
                             MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
                             (coe
                                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                (coe
                                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                                      (coe
                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208
                                            (coe v0))
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1206
                                            (coe v0)))))
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_collateral_2644
                                   (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v3)))
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_'8709'_442
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))))))))
         (coe (\ v5 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Conway.Conformance.Utxo._.collateralRange
d_collateralRange_2608 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralRange_2608 v0 ~v1 ~v2 v3 v4
  = du_collateralRange_2608 v0 v3 v4
du_collateralRange_2608 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralRange_2608 v0 v1 v2
  = coe
      MAlonzo.Code.Class.IsSet.du_range_550
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1470
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
      (coe
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
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1206 (coe v0))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1470
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2694 (coe v0))
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_collateral_2644
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1))))
-- Ledger.Conway.Conformance.Utxo._.bal
d_bal_2610 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_bal_2610 v0 ~v1 ~v2 v3 v4 = du_bal_2610 v0 v3 v4
du_bal_2610 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_bal_2610 v0 v1 v2
  = coe
      du_balance_2110 (coe v0)
      (coe
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
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1206 (coe v0))))
         (coe v2)
         (coe
            MAlonzo.Code.Ledger.Transaction.d_collateral_2644
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v1))))
-- Ledger.Conway.Conformance.Utxo.depositsChange
d_depositsChange_2616 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_2616 v0 ~v1 v2 v3 v4
  = du_depositsChange_2616 v0 v2 v3 v4
du_depositsChange_2616 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_2616 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'8854'__258
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
         (let v4
                = MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848 (coe v4)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
         (coe (\ v4 -> v4))
         (coe du_updateDeposits_1912 (coe v0) (coe v1) (coe v2) (coe v3)))
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
         (let v4
                = MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848 (coe v4)))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
         (coe (\ v4 -> v4)) (coe v3))
-- Ledger.Conway.Conformance.Utxo._._.depositRefunds
d_depositRefunds_2632 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  T_UTxOState_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Integer
d_depositRefunds_2632 v0 ~v1 v2 v3 v4
  = du_depositRefunds_2632 v0 v2 v3 v4
du_depositRefunds_2632 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  T_UTxOState_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Integer
du_depositRefunds_2632 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Ext.d_negPart_24
      (coe
         du_depositsChange_2616 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_1992 (coe v2)))
-- Ledger.Conway.Conformance.Utxo._._.newDeposits
d_newDeposits_2640 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  T_UTxOState_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Integer
d_newDeposits_2640 v0 ~v1 v2 v3 v4
  = du_newDeposits_2640 v0 v2 v3 v4
du_newDeposits_2640 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  T_UTxOState_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Integer
du_newDeposits_2640 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Ext.d_posPart_10
      (coe
         du_depositsChange_2616 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_1992 (coe v2)))
-- Ledger.Conway.Conformance.Utxo._._.consumed
d_consumed_2648 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  T_UTxOState_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> AgdaAny
d_consumed_2648 v0 ~v1 v2 v3 v4 = du_consumed_2648 v0 v2 v3 v4
du_consumed_2648 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  T_UTxOState_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> AgdaAny
du_consumed_2648 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe
               MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0))))
            (coe
               du_balance_2110 (coe v0)
               (coe
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
                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                        (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208 (coe v0))
                        (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1206 (coe v0))))
                  (coe d_utxo_1988 (coe v2))
                  (coe MAlonzo.Code.Ledger.Transaction.d_txins_2610 (coe v3))))
            (MAlonzo.Code.Ledger.Transaction.d_mint_2618 (coe v3)))
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0))
            (coe du_depositRefunds_2632 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0))
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1190
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_200
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
            (coe
               MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
               (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
               (coe
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
            (coe (\ v4 -> v4))
            (coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2624 (coe v3))))
-- Ledger.Conway.Conformance.Utxo._._.produced
d_produced_2656 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  T_UTxOState_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> AgdaAny
d_produced_2656 v0 ~v1 v2 v3 v4 = du_produced_2656 v0 v2 v3 v4
du_produced_2656 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  T_UTxOState_1978 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> AgdaAny
du_produced_2656 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe
               MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0))))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0))))
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0))))
            (coe du_balance_2110 (coe v0) (coe du_outs_2104 (coe v3)))
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0))
               (MAlonzo.Code.Ledger.Transaction.d_txfee_2616 (coe v3))))
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0))
            (coe du_newDeposits_2640 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0))
         (MAlonzo.Code.Ledger.Transaction.d_txdonation_2630 (coe v3)))
-- Ledger.Conway.Conformance.Utxo.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_2664 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 -> Integer
d_utxoEntrySizeWithoutVal_2664 ~v0
  = du_utxoEntrySizeWithoutVal_2664
du_utxoEntrySizeWithoutVal_2664 :: Integer
du_utxoEntrySizeWithoutVal_2664 = coe (8 :: Integer)
-- Ledger.Conway.Conformance.Utxo.utxoEntrySize
d_utxoEntrySize_2666 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_2666 v0 ~v1 v2 = du_utxoEntrySize_2666 v0 v2
du_utxoEntrySize_2666 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_2666 v0 v1
  = coe
      addInt (coe (8 :: Integer))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_size_206
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2704 (coe v1)))
-- Ledger.Conway.Conformance.Utxo._≡?_
d__'8801''63'__2672 a0 a1 a2 a3 a4 = ()
data T__'8801''63'__2672
  = C_'8801''63''45'nothing_2678 | C_'8801''63''45'just_2682
-- Ledger.Conway.Conformance.Utxo.≟?
d_'8799''63'_2690 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8799''63'_2690 ~v0 ~v1 ~v2 v3 v4 v5
  = du_'8799''63'_2690 v3 v4 v5
du_'8799''63'_2690 ::
  Maybe AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_'8799''63'_2690 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
        -> let v4
                 = coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v2 v3 v1 in
           coe
             (case coe v4 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
                  -> if coe v5
                       then coe
                              seq (coe v6)
                              (coe
                                 MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe v5)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe C_'8801''63''45'just_2682))))
                       else coe
                              seq (coe v6)
                              (coe
                                 MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe v5)
                                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
                _ -> MAlonzo.RTE.mazUnreachableError)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe C_'8801''63''45'nothing_2678)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2712 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2712
  = C_UTXO'45'inductive_2808 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Utxo._.body
d_body_2720 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_73491 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568
d_body_2720 ~v0 ~v1 v2 = du_body_2720 v2
du_body_2720 ::
  T_GeneralizeTel_73491 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568
du_body_2720 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2680
      (coe d_'46'generalizedField'45'tx_73483 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.curTreasury
d_curTreasury_2728 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_73491 -> Maybe Integer
d_curTreasury_2728 ~v0 ~v1 v2 = du_curTreasury_2728 v2
du_curTreasury_2728 :: T_GeneralizeTel_73491 -> Maybe Integer
du_curTreasury_2728 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_curTreasury_2638
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2680
         (coe d_'46'generalizedField'45'tx_73483 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.mint
d_mint_2730 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_73491 -> AgdaAny
d_mint_2730 ~v0 ~v1 v2 = du_mint_2730 v2
du_mint_2730 :: T_GeneralizeTel_73491 -> AgdaAny
du_mint_2730 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2618
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2680
         (coe d_'46'generalizedField'45'tx_73483 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.refInputs
d_refInputs_2732 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_73491 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2732 ~v0 ~v1 v2 = du_refInputs_2732 v2
du_refInputs_2732 ::
  T_GeneralizeTel_73491 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2732 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2612
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2680
         (coe d_'46'generalizedField'45'tx_73483 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txNetworkId
d_txNetworkId_2740 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_73491 -> Maybe AgdaAny
d_txNetworkId_2740 ~v0 ~v1 v2 = du_txNetworkId_2740 v2
du_txNetworkId_2740 :: T_GeneralizeTel_73491 -> Maybe AgdaAny
du_txNetworkId_2740 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2636
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2680
         (coe d_'46'generalizedField'45'tx_73483 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txins
d_txins_2750 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_73491 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2750 ~v0 ~v1 v2 = du_txins_2750 v2
du_txins_2750 ::
  T_GeneralizeTel_73491 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2750 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2610
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2680
         (coe d_'46'generalizedField'45'tx_73483 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txouts
d_txouts_2752 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_73491 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2752 ~v0 ~v1 v2 = du_txouts_2752 v2
du_txouts_2752 ::
  T_GeneralizeTel_73491 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2752 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2614
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2680
         (coe d_'46'generalizedField'45'tx_73483 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txsize
d_txsize_2756 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_73491 -> Integer
d_txsize_2756 ~v0 ~v1 v2 = du_txsize_2756 v2
du_txsize_2756 :: T_GeneralizeTel_73491 -> Integer
du_txsize_2756 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_2640
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2680
         (coe d_'46'generalizedField'45'tx_73483 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txvldt
d_txvldt_2760 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_73491 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2760 ~v0 ~v1 v2 = du_txvldt_2760 v2
du_txvldt_2760 ::
  T_GeneralizeTel_73491 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2760 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2620
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2680
         (coe d_'46'generalizedField'45'tx_73483 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.txwdrls
d_txwdrls_2764 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_73491 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2764 ~v0 ~v1 v2 = du_txwdrls_2764 v2
du_txwdrls_2764 ::
  T_GeneralizeTel_73491 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2764 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2624
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2680
         (coe d_'46'generalizedField'45'tx_73483 (coe v0)))
-- Ledger.Conway.Conformance.Utxo._.pparams
d_pparams_2768 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_73491 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2768 ~v0 ~v1 v2 = du_pparams_2768 v2
du_pparams_2768 ::
  T_GeneralizeTel_73491 -> MAlonzo.Code.Ledger.PParams.T_PParams_244
du_pparams_2768 v0
  = coe
      d_pparams_1974 (coe d_'46'generalizedField'45'Γ_73485 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.slot
d_slot_2770 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_73491 -> AgdaAny
d_slot_2770 ~v0 ~v1 v2 = du_slot_2770 v2
du_slot_2770 :: T_GeneralizeTel_73491 -> AgdaAny
du_slot_2770 v0
  = coe d_slot_1972 (coe d_'46'generalizedField'45'Γ_73485 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.treasury
d_treasury_2772 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_73491 -> Integer
d_treasury_2772 ~v0 ~v1 v2 = du_treasury_2772 v2
du_treasury_2772 :: T_GeneralizeTel_73491 -> Integer
du_treasury_2772 v0
  = coe
      d_treasury_1976 (coe d_'46'generalizedField'45'Γ_73485 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.deposits
d_deposits_2776 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_73491 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2776 ~v0 ~v1 v2 = du_deposits_2776 v2
du_deposits_2776 ::
  T_GeneralizeTel_73491 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2776 v0
  = coe
      d_deposits_1992 (coe d_'46'generalizedField'45's_73487 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.donations
d_donations_2778 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_73491 -> Integer
d_donations_2778 ~v0 ~v1 v2 = du_donations_2778 v2
du_donations_2778 :: T_GeneralizeTel_73491 -> Integer
du_donations_2778 v0
  = coe
      d_donations_1994 (coe d_'46'generalizedField'45's_73487 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.fees
d_fees_2780 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_73491 -> Integer
d_fees_2780 ~v0 ~v1 v2 = du_fees_2780 v2
du_fees_2780 :: T_GeneralizeTel_73491 -> Integer
du_fees_2780 v0
  = coe d_fees_1990 (coe d_'46'generalizedField'45's_73487 (coe v0))
-- Ledger.Conway.Conformance.Utxo._.utxo
d_utxo_2782 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  T_GeneralizeTel_73491 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2782 ~v0 ~v1 v2 = du_utxo_2782 v2
du_utxo_2782 ::
  T_GeneralizeTel_73491 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2782 v0
  = coe d_utxo_1988 (coe d_'46'generalizedField'45's_73487 (coe v0))
-- Ledger.Conway.Conformance.Utxo.UTXO-premises
d_UTXO'45'premises_2852 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  T_UTxOEnv_1964 ->
  T_UTxOState_1978 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2852 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                  (coe
                     MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208 (coe v0))
                     (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1206 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_2610
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v2)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_'8709'_442
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
            (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
               (coe
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                       (coe
                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208 (coe v0))
                          (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1206 (coe v0)))
                       (coe v5)
                       (coe
                          MAlonzo.Code.Class.IsSet.du_dom_548
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1470
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                          (coe d_utxo_1988 (coe v4)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1470
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txins_2610
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2612
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_DecEq'45'ℙ_1138
                     (coe
                        MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208 (coe v0))
                        (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1206 (coe v0))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du__'8745'__704
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1600
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                        erased
                        (coe
                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                           MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                           MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208 (coe v0))
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1206 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txins_2610
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_refInputs_2612
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v2))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_442
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1470
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     du_Dec'45'inInterval_2328 (coe v0) (coe d_slot_1972 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txvldt_2620
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                        (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'Bool_16)
                        (coe
                           d_feesOK_2464 (coe v0) (coe v1) (coe d_pparams_1974 (coe v3))
                           (coe v2) (coe d_utxo_1988 (coe v4)))
                        (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                           (coe
                              MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218
                              (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0)))
                           (coe
                              du_consumed_2648 (coe v0) (coe d_pparams_1974 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v2)))
                           (coe
                              du_produced_2656 (coe v0) (coe d_pparams_1974 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0))
                                 (MAlonzo.Code.Ledger.Transaction.d_mint_2618
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v2))))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                 (MAlonzo.Code.Ledger.Transaction.d_txsize_2640
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v2)))
                                 (MAlonzo.Code.Ledger.PParams.d_maxTxSize_314
                                    (coe d_pparams_1974 (coe v3))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                    (d_refScriptsSize_2120
                                       (coe v0) (coe v1) (coe d_utxo_1988 (coe v4)) (coe v2))
                                    (MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342
                                       (coe d_pparams_1974 (coe v3))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                       (coe
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_220
                                               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264
                                                     (coe v0))
                                                  (mulInt
                                                     (coe
                                                        addInt (coe (160 :: Integer))
                                                        (coe
                                                           du_utxoEntrySize_2666 (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v5))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_336
                                                        (coe d_pparams_1974 (coe v3)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2704
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe v5)))))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1470
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txOutHash_2694
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txouts_2614
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                   (coe v2))))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                          (coe
                                             (\ v5 ->
                                                coe
                                                  MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                                  (coe
                                                     MAlonzo.Code.Ledger.Abstract.d_serSize_1738 v1
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2704
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v5))))
                                                  (MAlonzo.Code.Ledger.PParams.d_maxValSize_322
                                                     (coe d_pparams_1974 (coe v3)))))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txOutHash_2694
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txouts_2614
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                      (coe v2))))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                (\ v5 ->
                                                   coe
                                                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'All_28
                                                     (coe
                                                        (\ v6 ->
                                                           MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20))
                                                     (coe
                                                        (\ v6 ->
                                                           coe
                                                             MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                                                             (MAlonzo.Code.Ledger.Address.d_attrsSize_74
                                                                (coe v6))
                                                             (64 :: Integer)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v5))))
                                             (coe
                                                MAlonzo.Code.Class.IsSet.du_range_550
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1470
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txOutHash_2694
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txouts_2614
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                         (coe v2))))))
                                          (coe
                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                             (coe
                                                MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   (\ v5 ->
                                                      coe
                                                        MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_netId_112
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v5)))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224
                                                              (coe v0)))))
                                                (coe
                                                   MAlonzo.Code.Class.IsSet.du_range_550
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1470
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_mapValues_878
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txOutHash_2694
                                                         (coe v0))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txouts_2614
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                            (coe v2))))))
                                             (coe
                                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1634
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                   (coe
                                                      (\ v5 ->
                                                         coe
                                                           MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Address.d_net_82
                                                              (coe v5))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224
                                                                 (coe v0)))))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_dom_548
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1470
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_556)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txwdrls_2624
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                            (coe v2)))))
                                                (coe
                                                   MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                   (coe
                                                      du_'8799''63'_2690
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2636
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                            (coe v2)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224
                                                            (coe v0)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224
                                                            (coe v0))))
                                                   (coe
                                                      du_'8799''63'_2690
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_curTreasury_2638
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_body_2680
                                                            (coe v2)))
                                                      (coe d_treasury_1976 (coe v3))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)))))))))))))))))
-- Ledger.Conway.Conformance.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_73483 ::
  T_GeneralizeTel_73491 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2670
d_'46'generalizedField'45'tx_73483 v0
  = case coe v0 of
      C_mkGeneralizeTel_73493 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_73485 ::
  T_GeneralizeTel_73491 -> T_UTxOEnv_1964
d_'46'generalizedField'45'Γ_73485 v0
  = case coe v0 of
      C_mkGeneralizeTel_73493 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s
d_'46'generalizedField'45's_73487 ::
  T_GeneralizeTel_73491 -> T_UTxOState_1978
d_'46'generalizedField'45's_73487 v0
  = case coe v0 of
      C_mkGeneralizeTel_73493 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_73489 ::
  T_GeneralizeTel_73491 -> T_UTxOState_1978
d_'46'generalizedField'45's''_73489 v0
  = case coe v0 of
      C_mkGeneralizeTel_73493 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Utxo.GeneralizeTel
d_GeneralizeTel_73491 a0 a1 = ()
data T_GeneralizeTel_73491
  = C_mkGeneralizeTel_73493 MAlonzo.Code.Ledger.Transaction.T_Tx_2670
                            T_UTxOEnv_1964 T_UTxOState_1978 T_UTxOState_1978