Spree::Core::Engine.routes.draw do
  resources :workshops
  match 'workshops/update_town_select/:id' => 'workshops#update_town_select'
end
