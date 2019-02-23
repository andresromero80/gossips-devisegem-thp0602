class MissionsController < ApplicationController
  def show
  	@mission = Mission.find(params[:mission_id])
  end
end
