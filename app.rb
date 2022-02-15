require 'sinatra/base'
require 'sinatra/reloader'
require './lib/birthday'

class BirthdayManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions
  get '/' do
    erb :index
  end

  post '/birthday' do
    session[:name]  = params[:name]
    session[:day]   = params[:day]
    session[:month] = params[:month]
    redirect '/birthday'
  end

  get '/birthday' do
    @name     = session[:name]
    @birthday = Birthday.new(session[:day], session[:month])
    erb :birthday
  end

  run! if app_file == $0
end