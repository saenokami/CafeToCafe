Rails.application.routes.draw do
  devise_for :admins
  
  devise_for :users, controllers: {
    registrations: 'public/registrations'
  }

  namespace :public do
    get 'homes/top'
    get 'homes/about'
    resources :shops, only: [:new, :index, :show, :create, :edit, :update]
    resources :posts, only: [:new, :index, :show, :create, :edit, :update, :destroy]
    resources :users, only: [:edit, :show, :update, :destroy] do
      get 'mypage', on: :member 
    end
  end

  root to: "public/homes#top"
end
