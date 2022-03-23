Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contact

  get "hotels", to: "hotels#index"
  get "hotels/new", to: "hotels#new"
  post "hotels", to: "hotels#create"
  get "hotels/:id", to: "hotels#show"
  get "restaurants/:id/edit", to: "restaurants#edit"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
