class MissionsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    if current_user
      @missions = Mission.where(user_id: current_user.id)
    else 
      flash[:warning] = "Please Sign in"
      redirect_to login_path
    end 
  end 

  def new
  	@mission = Mission.new()
  end

  def create
  	@mission = Mission.new(mission_params)
  	@mission.user_id = current_user.id

    if @mission.save
      flash[:success] = "New mission created!"
      redirect_to root_path
    else
      render new_mission_path
    end

  end 

  def show
  	@mission = Mission.find(params[:id])
    @users = User.all
  end

    private

  def mission_params
    params.require(:mission).permit(:title, :description)
  end 
end
