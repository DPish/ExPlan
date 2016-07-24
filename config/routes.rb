Rails.application.routes.draw do
	
  root to: "explans#index"	
 	resources :explans, only: [:index, :new, :create]

 	resources :exercises, only: [:index, :new, :create]
 	resources :extasks, only: [:index, :new, :create]
 	resource :session, only: [:new, :create]

 	
 end
