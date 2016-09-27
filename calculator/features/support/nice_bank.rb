require 'sinatra'
require_relative '../support/cash_slot'
require_relative '../support/teller'

set :cash_slot, CashSlot.new

set :account do
  fail 'account has not been set'
end

get '/' do
  %{
  <html>
    <body>
      <form action="/withdraw" method="post">
        <label for="amount">Amount</label>
        <input id="amount" type="text" name="amount"/>
        <button type="submit">Withdraw</button>
      </form>
    </body>
  </html>
 }
end

post '/withdraw' do
  teller = Teller.new(settings.cash_slot)
  teller.withdraw_from(settings.account, params[:amount].to_i)
  # fail "I dont't know what it is."
end