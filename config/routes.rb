Rails.application.routes.draw do
  	get '/' => 'home#index', as: :root

	get 'signup'  => 'clients#new'
	
	post 'clients' => 'clients#create'

	get 'login' => 'sessions#new'

	post 'login' => 'sessions#create'

	delete 'logout' => 'sessions#destroy'

	get 'pending_notes' => 'notes#index'
	get 'notes/:id' => 'notes#show', as: :note
	get 'notes/:id/edit' => 'notes#edit', as: :edit_note
	patch 'notes/:id' => 'notes#update'

	get 'dashboard' => 'dashboard#index'
	post 'notes' => 'dashboard#create'

	get 'clients' => 'clients#index'

	get 'clients/:id' => 'clients#show', as: :client
end
