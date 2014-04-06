RealEstate::Application.routes.draw do
  resources :buildings, only: [:new]
end
