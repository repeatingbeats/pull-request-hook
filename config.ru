require 'rack/parser'
require './hook'

use Rack::Parser

run Sinatra::Application
