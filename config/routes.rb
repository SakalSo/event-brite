Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get "events" => "events#index"
  #get "events/new" => "events#new"
  #get "events/:id" => "events#show", as: "event"
  #get "events/:id/edit" => "events#edit"
  #patch "events/:id" => "events#update" # for receiving update submition
  #post "event"
  resources :events
end
