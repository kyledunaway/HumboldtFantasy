HumboldtFantasy::Application.routes.draw do

  resources :line_posts
  resources :standings

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  
  get "static/example"

  get "static/all_picks"

  get "static/rules"

  get "static/pick_order"

  get "static/pick_history"

  root :to => "sessions#new"
  
  resources :users do
    resources :picks
  end

  resources :sessions

  resources :posts do
    resources :comments
  end
  
end