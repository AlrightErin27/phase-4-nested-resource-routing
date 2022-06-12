Rails.application.routes.draw do
  resources :dog_houses, only: [:show] do
    resources :reviews, only: %i[show index]
  end

  resources :reviews, only: %i[show index create]

  # Verb  URI Pattern                                     Controller#Action
  # dog_house_reviews GET   /dog_houses/:dog_house_id/reviews(.:format)     reviews#index
  # dog_house_review GET    /dog_houses/:dog_house_id/reviews/:id(.:format) reviews#show
  # dog_house GET           /dog_houses/:id(.:format)                       dog_houses#show
  # reviews GET             /reviews(.:format)                              reviews#index
  # POST                    /reviews(.:format)                              reviews#create
end
