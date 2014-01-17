class UsersController < ApplicationController
  respond_to :json

  def index
    @users = User.all
  end

  def show
    url = "http://graph.facebook.com/#{@current_user.facebook_username}"
    result = HTTParty.get(url).to_json
    @info_hash = JSON.parse(result).response
  end

  def new; end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
      @user.update_attributes(params[:user])

    if @user.update_attributes(params[:user])
      redirect_to @user, notice: 'user was successfully updated.' 
    else
      render "edit"
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path
  end

end