class StaticPagesController < ApplicationController
	# before_action :authenticate_user!, only: [:secret]
	  def home
	  end

	  def secret
	  	@users = User.all
	  	@missions = Mission.all
	  end 
end
