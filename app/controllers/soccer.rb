require 'HTTParty'

get '/' do
  response = HTTParty.get(
  'https://sportsop-soccer-sports-open-data-v1.p.mashape.com/v1/leagues/serie-a',
  headers: {"X-Mashape-Key" => ENV['ACCESS_KEY'],
    "Accept" => "application/json"}
  )

  p response.parsed_response
  return 'hello world'
end


get '/serie-a/standings' do
  response = HTTParty.get(
    'https://sportsop-soccer-sports-open-data-v1.p.mashape.com/v1/leagues/serie-a/seasons/16-17/standings',
    headers:{
      "X-Mashape-Key" => ENV['ACCESS_KEY'],
      "Accept" => "application/json"
      })
  something = response.parsed_response['data']
  p something['standings']
  # binding.pry
end
