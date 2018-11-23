Rails.application.routes.draw do
	root to: "mails#index"
	devise_for :users
	resources :tasks, :mails, except: [:show]
end