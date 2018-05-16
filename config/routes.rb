Rails.application.routes.draw do
  devise_for :admins

  namespace :admin do
    root 'dashboard#show'
  end

  root 'home#show'
end
