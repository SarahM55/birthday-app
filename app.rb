require 'sinatra/base'
require 'sinatra/reloader'

class BirthdayManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Hello!'
  end

  run! if app_file == $0
end