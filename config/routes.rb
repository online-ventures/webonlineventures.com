OnlineVentures::Application.routes.draw do
  root to: redirect('http://wov.io')
  post '/contact', to: 'contact#send_message'
  # get '/admin', to: 'admin#index'
  # resources :team, only: [:index, :show]
  # namespace :admin do
  #   resources :members
  # end
end
