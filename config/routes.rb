Rails.application.routes.draw do
#顧客用device
  devise_for :customers, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
#管理者用device
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }


#管理者用ルーティング
  namespace :admin do
    resources :users, only: [:index, :show] do
      get 'users/withdraw'
    end
    resources :posts, only: [:index, :show, :destroy]
  end


#顧客用ルーティング
  scope module: :public do
    resources :users, only: [:show, :edit, :update] do
      get 'users/leave'
      get 'users/withdraw'
    end
    resources :posts, only: [:index, :show, :new, :create, :destroy] do
      resource :favorites, only: [:create, :destroy]
      resources :post_comments, only: [:create, :destroy]
    end
    #get 'homes/top'
    root :to => 'homes#top'
    get 'homes/about'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
