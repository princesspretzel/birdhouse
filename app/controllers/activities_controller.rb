class ActivitiesController < ApplicationController

  def index
    @activities = Activity.all
  end

  def create
    Activity.create!({
      name: params[:name],
      duration: params[:duration],
      participants: params[:participants]
    })
    redirect_to :activities
  end

  def new; end
  
end