Rails.application.routes.draw do
  namespace :admin do
    resources :jobs do
      member do
        post :publish
        post :hide
      end
      resources :resumes
    end
  end
  devise_for :users
  root 'jobs#index'

  resources :jobs do
    resources :resumes
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
