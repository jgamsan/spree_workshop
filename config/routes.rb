Spree::Core::Engine.routes.draw do
  resources :workshops
  match 'workshops/update_town_select/:id' => 'workshops#update_town_select'
  match 'workshops/update_workshop_list/:id' => 'workshops#update_workshop_list'
  namespace :admin do
    resources :workshops
  end
end
