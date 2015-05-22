Rails.application.routes.draw do
  resources :locations, except: [:new, :edit]
  resources :animals, except: [:new, :edit]
  resources :species, except: [:new, :edit]

  root 'locations#index'
end
