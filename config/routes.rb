Rails.application.routes.draw do
  resources :gears
  root to: 'gears#index'
  get '/gears/new' => 'gears#new'
  get '/gears/show' => 'gears#show'
end
