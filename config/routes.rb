Rails.application.routes.draw do
  resources :clients, only: [:index, :show, :update]
  resources :gyms
  resource :memberships, only: [:create]
end
