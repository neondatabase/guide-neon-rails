Rails.application.routes.draw do
    resources :authors, only: [:index]
    get '/books/:author_id', to: 'books#index', as: 'author_books'
end