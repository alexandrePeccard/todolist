Rails.application.routes.draw do
	root to: "emails#index"
	devise_for :users
	resources :tasks, :emails, except: [:show]
end