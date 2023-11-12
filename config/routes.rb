Rails.application.routes.draw do
  namespace :admin do
    get 'users/index'
    get 'users/show'
    get 'users/withdraw'
  end
  namespace :admin do
    get 'posts/index'
    get 'posts/show'
    get 'posts/destroy'
  end
  namespace :public do
    get 'users/show'
    get 'users/edit'
    get 'users/leave'
    get 'users/update'
    get 'users/withdraw'
  end
  namespace :public do
    get 'favorites/create'
    get 'favorites/destroy'
  end
  namespace :public do
    get 'post_comments/create'
    get 'post_comments/destroy'
  end
  namespace :public do
    get 'posts/index'
    get 'posts/show'
    get 'posts/new'
  end
  namespace :public do
    get 'homes/top'
    get 'homes/about'
  end
#顧客用device
  devise_for :customers, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
#管理者用device
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
