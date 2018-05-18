Rails.application.routes.draw do
  devise_for :admins

  namespace :admin do
    resources :games

    root 'dashboard#show'
  end

  root 'home#show'
end
