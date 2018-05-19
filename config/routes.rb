Rails.application.routes.draw do
  devise_for :admins

  namespace :admin do
    resources :games, except: :show
    resources :publishers, except: :show

    root 'dashboard#show'
  end

  root 'home#show'
end
