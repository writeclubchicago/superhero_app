Rails.application.routes.draw do
  root 'pages#home'
get '/superheros' => 'superheros#index'

namespace :api do
	namespace :v1 do
		get '/superheros' => 'superheros#index'
		get '/superheros/:id' => 'superheros#show', :as => :superhero
		post '/superheros' => 'superheros#create'
	end

	namespace :v2 do
		get '/superheros' => 'superheros#index'
		get '/superheros/:id' => 'superheros#show', :as => :superhero
		post '/superheros' => 'superheros#create'
	end
end

end