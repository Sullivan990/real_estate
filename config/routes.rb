RealEstate::Application.routes.draw do
  resources :buildings, only: [:new, :create, :index]
end
