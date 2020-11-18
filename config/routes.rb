Rails.application.routes.draw do
  # get "restaurants", to: "restaurants#index", as: :restaurants
  # get "restaurants/new", to:"restaurants#new", as: :new_restaurant
  # post "restaurants", to:"restaurants#create"
  # get "restaurants/:id", to:"restaurants#show", as: :restaurant
  # get "restaurants/:restaurant_id/reviews/new", to:"reviews#new", as: :new_review
  # post "restaurants/:restaurant_id/reviews", to:"reviews#create", as: :restaurant_reviews
  resources :restaurants, only: [:index, :create,:new, :show] do
    resources :reviews, only: [:new, :create]
  end
end
