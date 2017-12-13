Rails.application.routes.draw do
	root 'albums#index'
	get 'albums/new' => 'albums#new'
	get 'albums/:id' => 'albums#show', as: :album
	post 'albums' => 'albums#create'
	get 'signup' => 'users#new'
	resources :users
	get '/login' => 'sessions#new'
	post 'login' => 'sessions#create'
	delete 'logout' => 'sessions#destroy'
  resources :sessions

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
