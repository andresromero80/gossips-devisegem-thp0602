Rails.application.routes.draw do
  get '/missions/:mission_id', to: 'missions#show'
  devise_for :users
  root to: 'static_pages#home'

  get '/secret', to: 'static_pages#secret', as: :secret
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
