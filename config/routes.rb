Rails.application.routes.draw do

  authenticate :user, Proc.new { |u| u.admin? } do
    namespace :admin do
      resources :users

      root to: 'users#index'
    end
  end

  devise_for :users
end
