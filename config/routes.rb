Rails.application.routes.draw do

  resources :tweets do
    resources :likes
     
  end

  get '/tweets/:id/retweets', to: 'tweets#retweets', as: 'retweets'

  devise_for :users, controllers: { registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'tweets#index'
end


