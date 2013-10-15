OnlineVentures::Application.routes.draw do
	post '/contact', to: 'contact#send'
	resources :team, only: [:index, :show]	
	namespace :admin do
		resources :members
	end
end
