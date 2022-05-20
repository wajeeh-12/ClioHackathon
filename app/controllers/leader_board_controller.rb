class LeaderBoardController < ApplicationController

  TESTNET_URL = "https://testnet-algorand.api.purestake.io/ps2/v2/accounts"
  API_KEY = "CwBYs7SGRE7clrwtdaoq97Ke9I4fC0QWazfphgAB"
  # curl -X 'GET' \
  # 'https://testnet-algorand.api.purestake.io/ps2/v2/accounts/Y2XCIHHBND2LELNLLPYLOBJGMH2MCXIXNSFUQO3GHRKWHRTJHX35IWAGOE' \
  # -H 'accept: application/json' \
  # -H 'x-api-key: CwBYs7SGRE7clrwtdaoq97Ke9I4fC0QWazfphgAB'

  def show
    @users = User.all
    @wallets = {}
    @users.each do |user|
      if user.wallet_address.present?
        @wallets[user.email] = HTTParty.get(testnet_request(user), headers: { "x-api-key" => API_KEY })
      else
        @wallets[user.email] = {}
      end
    end
  end

  def testnet_request(user)
    "#{TESTNET_URL}/#{user.wallet_address}"
  end
end
