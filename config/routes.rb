Rails.application.routes.draw do
  devise_for :users
  resources :posts do
  resources :comments
end
  #get 'inquiry' => 'inquiry#index'
  #post 'inquiry/confirm' => 'inquiry#confirm'
  #post 'inquiry/thanks' => 'inquiry#thanks'

  root 'welcome#index'
  get "welcome/about"

  get 'inquiry' => 'inquiry#index'
  post 'inquiry/confirm'
  post 'inquiry/thanks'
end
