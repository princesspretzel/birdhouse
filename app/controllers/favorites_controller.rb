class FavoritesController < ApplicationController

  def create
    Favorite.create!({
      user_id: params[:user_id],
      activity_id: params[:activity_id]
    })
    
    redirect_to activities_path
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy

    redirect_to activities_path
  end

end