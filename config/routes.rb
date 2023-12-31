Rails.application.routes.draw do

#顧客用device
  devise_for :customers, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  devise_scope :customer do
    post 'customers/guest_sign_in', to: 'public/sessions#guest_sign_in'
  end

#管理者用device
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }

#管理者用ルーティング
  namespace :admin do
    resources :users, only: [:index, :show, :edit, :update] do
      get 'users/withdraw'
    end
    resources :posts, only: [:index, :show, :destroy]
    resources :experiences, only: [:index, :create, :edit, :update]
    resources :categories, only: [:index, :create, :edit, :update, :destroy]
  end


#顧客用ルーティング
  scope module: :public do
    resources :users, only: [:show, :edit, :update] do
      get 'users/leave'
      get 'users/withdraw'
      member do
        get 'users/favorites'
      end
    end
    resources :posts, only: [:index, :show, :new, :create, :destroy] do
      resource :favorites, only: [:create, :destroy]
      resources :post_comments, only: [:create, :destroy]
    end
    resources :categories, only: [:index, :create, :edit, :update]
    #get 'homes/top'
    root :to => 'homes#top'
    get 'homes/about'
    get "search" => "searches#search" #キーワード検索用
    get "/category/search" => "searches#category_search" #カテゴリ検索用
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
