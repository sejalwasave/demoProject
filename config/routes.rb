Rails.application.routes.draw do
  root "companies#index"
  
  resources :companies do
    resources :addresses
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
