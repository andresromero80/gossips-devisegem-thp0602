class StaticPagesController < ApplicationController
	# before_action :authenticate_user!, only: [:secret]
	  def home
	  end

	  def secret
	  	@hash = {"cancer" => "Cancers", "psyco" => "Compétences psychosociales", "addict" => "Conduites addictives", "environ" => "Environnement", "handicap" => "Handicap", "hepatites" => "Hépatites (VHB - VHC)", "chronic" => "Maladies chroniques (autres)", "infec" => "Maladies infectieuses (autres)", "medic" => "Médicament", "nutri" => "Nutrition (alimentation et activité physique)", "polsante" => "Politique de santé", "precar" => "Précarité", "parent" => "Périnatalité - Parentalité", "routier" => "Risque routier", "travail" => "Santé au travail", "dental" => "Santé bucco-dentaire", "mental" => "Santé mentale", "school" => "Santé scolaire", "violence" => "Violence (dont mutilations sexuelles)", "sexual" => "Sexualité (contraception, IVG)", "vih" => "VIH-Sida IST", "vaccin" => "Vaccination", "elder" => "Vieillissement"}
	  	@users = User.all
	  	@missions = Mission.all
	  end 
end
