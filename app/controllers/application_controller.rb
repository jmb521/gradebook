require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    Rack::MethodOverride
    enable :sessions
    set :session_secret, "PartyTime"
  end

  get "/" do
    erb :welcome
  end

  get '/login' do
    erb :'login.html'
    
  end

  post '/login' do
    if params[:name] != "" && params[:password] != ""
      @user = User.find_by(name: params[:name])
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect "/users/#{@user.id}" #user show
      else
        @name = params[:name]
        erb :'login.html'
      end
    else
      redirect '/login'
    end
  end
  
  get '/logout' do
    session.clear
    redirect '/'
  end

helpers do

  def logged_in?
    !!current_user
  end

  def current_user
    @user = User.find_by(id: session[:user_id]) if session[:user_id]
  end
  
  #might add more helper methods


end


end
