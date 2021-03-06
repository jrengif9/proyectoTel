Rails.application.routes.draw do
  get 'map/show'

  devise_for :users
  get 'position/getPosition', to: 'position#getPosition', as: 'get_position'
  get 'map/show', to: 'map#show', as: 'show_map'
  get 'position/save', to: 'position#save' 

  root 'position#getPosition'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end