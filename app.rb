require 'sinatra/base'
require 'sinatra/reloader'

class BirthdayManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions
  get '/' do
    'Hello!'
    erb :index
  end

  post '/names' do
    session[:user_name] = params[:user_name]
    redirect '/names'
  end

  get '/names' do
    @user_name = session[:user_name]
    erb :names
  end

  run! if app_file == $0
end