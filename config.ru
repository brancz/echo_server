require 'sinatra'

$stdout.sync = true

post '/' do
  request.body.rewind
  puts request.body.read
  status 204
end

run Sinatra::Application
