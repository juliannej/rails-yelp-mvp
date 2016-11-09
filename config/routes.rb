Rails.application.routes.draw do
  root "restaurants#index"
  resources :restaurants, only: [:new, :create, :show, :index] do
    resources :reviews, only: [:new, :create, :show]
  end
  # A visitor can see the list of all restaurants.
  # He can add a new restaurant, and be redirected to the show view of that new restaurant.
  # He can see the details of a restaurant, with all reviews related to the restaurant.
  # He can add a new review to a restaurant

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
