Rails.application.routes.draw do
  resources :tweets do
    resources :likes
  end
  
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'tweets#index'
  # devise_scope :user do
  #   authenticated :user do
  #     root 'tweets#index', as: :authenticated_root
  #   end

  #   unauthenticated do
  #     root 'tweets#index', as: :unauthenticated_root
  #   end
  # end

end
