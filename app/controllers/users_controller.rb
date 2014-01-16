class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    #@artist = params[:artist] || ""
    #user_hash = MusicBrainz::Artist.search(@artist)
    #userid = user_hash[0][:id]
    url = "http://graph.facebook.com/#{userid}"
    result = HTTParty.get(url)
    #@country = result["metadata"]["artist"]["area"]["name"]
    #@country.gsub!(" ", "_")
    #@year_begin = result["metadata"]["artist"]["life_span"]["begin"]
    #request_url = "https://api.instagram.com/v1/tags/#{@country}/media/recent?client_id=c98173f6adeb4b4b9bbb50a0dc71cb70"
    #images = HTTParty.get(request_url)
  end

  def new
    @user = User.new
  end

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