class UsersController < ApplicationController

  

  # GET: /users/new
  get "/users/new" do
    erb :"/users/new.html"
  end #signup form

  # POST: /users
  post "/users" do
    if params[:name] != "" && params[:password] != ""
      if !User.find_by(name: params[:name])

        @user = User.create(name: params[:name], password: params[:password])
        session[:user_id] = @user.id
        redirect "/users/#{@user.id}" #user show
      else
        redirect '/users/new'
      end
    else
      redirect '/users/new'
    end
  end

   #list of all the users students
  get "/users/:id" do
    @user = User.find(params[:id])
    erb :"/users/show.html"
  end

  
 

 
end
