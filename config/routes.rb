Rails.application.routes.draw do

	get 'citations/index'
 
	resources :citations
	
	root 'citations#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
