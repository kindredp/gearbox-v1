Rails.application.routes.draw do
  resources :gears do
    collection { post :import }
  end

  root to: 'gears#index'
  get '/gears/new' => 'gears#new'
  get '/gears/show' => 'gears#show'
  get '/gears/import' => 'gears#import'

end
