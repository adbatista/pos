Rails.application.routes.draw do
  root "lists#index"
  resources :lists do
  	resources :items, except: %i[index show, edit update]
  end
end
