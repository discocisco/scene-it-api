# frozen_string_literal: true

Rails.application.routes.draw do
  resources :favorites
  resources :reviews, except: %i[new edit]
  resources :favorites, except: %i[new edit]
  resources :movies, except: %i[new edit create update destroy]
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
  post '/find-theater' => 'movies#find_theater'
end
