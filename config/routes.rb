Rails.application.routes.draw do
  
  devise_for :users

  root 'math_facts#index', as: :authenticated_root

  resources :math_facts, only: [:index, :show, :edit, :update]

end
