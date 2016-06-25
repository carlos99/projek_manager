Rails.application.routes.draw do

  root 'projects#index'

  resources :tasks do
    resources :comments, only: [:create]
    member do
      patch :toggle
    end
  end
  resources :projects

end
