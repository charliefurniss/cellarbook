Rails.application.routes.draw do
  
  get 'homepages/index'

  resources :user_wines , only: [:index, :show]

  resources :user_notes , only: [:index, :show]

  resources :sessions, only: [:new, :create]

  delete "/sessions" , to: "sessions#destroy"

  resources :notes, only: [:index, :new, :show, :create]

  resources :users, only: [:new, :show, :create, :edit, :update]

  resources :wines, only: [:index, :new, :show, :create]

  delete "/wines/:id" , to: "wines#destroy"

  post "/notes/:id/wine_note_new", to: "notes#wine_note_new"

  root 'homepages#index'

  
end
