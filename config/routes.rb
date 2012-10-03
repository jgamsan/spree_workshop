Spree::Core::Engine.routes.draw do
  resources :workshops do
    collection do
      get 'search'
    end
  end
  match 'workshops/update_town_select/:id' => 'workshops#update_town_select'

  namespace :admin do
    resources :workshops
  end
end
