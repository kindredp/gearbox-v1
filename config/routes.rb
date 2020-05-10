Rails.application.routes.draw do
  resources :gears do
    collection { post :import }
  end

  root to: 'gears#index'
  get '/gears/new' => 'gears#new'
  get '/gears/show' => 'gears#show'
  get '/gears/edit' => 'gears#edit'
  get '/gears/import-csv' => 'gears#import_csv'
end
