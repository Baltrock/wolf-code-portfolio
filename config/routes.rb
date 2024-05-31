Rails.application.routes.draw do
  mount ForestLiana::Engine => '/forest'
  resources :cancellation_forms
  resources :complaint_forms
  resources :site_updates
  resources :skill_lists
  resources :completed_websites
  resources :confirmation_forms
  resources :website_requests
  resources :user_informations
  devise_for :admins
  devise_for :users
  root to: "pages#home"

  get 'users' => 'users#primary', as: :user_root
  get 'admins' => 'admin#primary', as: :admin_root
  get '/skill_lists', to: 'skill_lists#index', as: :skills
  get '/completed_websites', to: 'completed_websites#index', as: :finished_website
  get '/confirmation_forms', to: 'confirmation_forms#index', as: :confirming
  get '/user_informations', to: 'user_informations#index', as: :user_info
  get '/website_requests', to: 'website_requests#index', as: :requests
  get '/cancellation_forms', to: 'cancellation_forms#index', as: :cancel
  get '/complaint_forms', to: 'complaint_forms#index', as: :complain
  get '/site_updates', to: 'site_updates#index', as: :news
  delete "/logout", to: "sessions#destroy"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
