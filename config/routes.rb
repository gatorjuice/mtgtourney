Rails.application.routes.draw do
  devise_for :users
  root 'leagues#index'
end
