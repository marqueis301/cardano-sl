module Cardano.Wallet.API.V1.Updates where

import           Universum

import           Cardano.Wallet.API.Types
import qualified Cardano.Wallet.API.V1.Accounts   as Accounts
import           Cardano.Wallet.API.V1.Parameters
import           Cardano.Wallet.API.V1.Types

import           Servant

-- | Mimicks V0 in preparation for update mechanism rework.
-- See: https://iohk.myjetbrains.com/youtrack/issue/CS-28
type API =
         "updates" :> "next"
                   :> Summary "Requests information about the next scheduled update."
                   :> Get '[JSON] WalletUpdate
    :<|> "updates" :> Summary "Applies the update. Returns info about the update being applied."
                   :> Post '[JSON] WalletUpdate
