require 'sinatra'

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
  fail "I dont't know what it is."
end