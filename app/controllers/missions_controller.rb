class MissionsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @hash = {"cancer" => "Cancers", "psyco" => "Compétences psychosociales", "addict" => "Conduites addictives", "environ" => "Environnement", "handicap" => "Handicap", "hepatites" => "Hépatites (VHB - VHC)", "chronic" => "Maladies chroniques (autres)", "infec" => "Maladies infectieuses (autres)", "medic" => "Médicament", "nutri" => "Nutrition (alimentation et activité physique)", "polsante" => "Politique de santé", "precar" => "Précarité", "parent" => "Périnatalité - Parentalité", "routier" => "Risque routier", "travail" => "Santé au travail", "dental" => "Santé bucco-dentaire", "mental" => "Santé mentale", "school" => "Santé scolaire", "violence" => "Violence (dont mutilations sexuelles)", "sexual" => "Sexualité (contraception, IVG)", "vih" => "VIH-Sida IST", "vaccin" => "Vaccination", "elder" => "Vieillissement"}
    if current_user
      @missions = Mission.where(user_id: current_user.id)
    else 
      flash[:warning] = "Please Sign in"
      redirect_to login_path
    end 
  end 

  def new
    @hash = {"cancer" => "Cancers", "psyco" => "Compétences psychosociales", "addict" => "Conduites addictives", "environ" => "Environnement", "handicap" => "Handicap", "hepatites" => "Hépatites (VHB - VHC)", "chronic" => "Maladies chroniques (autres)", "infec" => "Maladies infectieuses (autres)", "medic" => "Médicament", "nutri" => "Nutrition (alimentation et activité physique)", "polsante" => "Politique de santé", "precar" => "Précarité", "parent" => "Périnatalité - Parentalité", "routier" => "Risque routier", "travail" => "Santé au travail", "dental" => "Santé bucco-dentaire", "mental" => "Santé mentale", "school" => "Santé scolaire", "violence" => "Violence (dont mutilations sexuelles)", "sexual" => "Sexualité (contraception, IVG)", "vih" => "VIH-Sida IST", "vaccin" => "Vaccination", "elder" => "Vieillissement"}
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

  def edit
    @hash = {"cancer" => "Cancers", "psyco" => "Compétences psychosociales", "addict" => "Conduites addictives", "environ" => "Environnement", "handicap" => "Handicap", "hepatites" => "Hépatites (VHB - VHC)", "chronic" => "Maladies chroniques (autres)", "infec" => "Maladies infectieuses (autres)", "medic" => "Médicament", "nutri" => "Nutrition (alimentation et activité physique)", "polsante" => "Politique de santé", "precar" => "Précarité", "parent" => "Périnatalité - Parentalité", "routier" => "Risque routier", "travail" => "Santé au travail", "dental" => "Santé bucco-dentaire", "mental" => "Santé mentale", "school" => "Santé scolaire", "violence" => "Violence (dont mutilations sexuelles)", "sexual" => "Sexualité (contraception, IVG)", "vih" => "VIH-Sida IST", "vaccin" => "Vaccination", "elder" => "Vieillissement"}
    # @user = User.find(params[:id])
    if current_user.id == Mission.find(params[:id]).user_id
      @mission = Mission.find(params[:id])
    else 
      flash[:warning] = "You're not able to edit other users"
      redirect_to root_path
    end 
  end

  def update
    @mission = Mission.find(params[:id])
    @mission.update(mission_params)
    redirect_to missions_path
  end

    private

  def mission_params
    params.require(:mission).permit(:title, :theme, :program, :context, 
      :objectif, :description, :partner, :start, :end, :duration, 
      :frequence, :public, :numpeople, :type, :finance, :evaluation, 
      :sector, :geolevel, :commune, :deplevel, :plan)
  end 
end
