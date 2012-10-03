require 'sinatra'
require 'json'

post '/' do
  if params['action'] == 'closed'
    merge_data = params['pull_request'].select { |k, v| k.match /^merge/ }
    logger.info merge_data
  end
  [ 200, {}, '' ]
end
