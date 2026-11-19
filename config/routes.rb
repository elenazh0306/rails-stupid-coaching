Rails.application.routes.draw do
  root "questions#new"
  resources :questions, only: [:index, :new, :create, :show]
end
