Spina::Engine.routes.draw do
  namespace :admin do
    resources :newslleters, only: :index
  end
end
