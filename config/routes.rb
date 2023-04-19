Rails.application.routes.draw do
 get 'books' => 'book#index', as: 'books'
 get 'books/:id' => 'book#show', as: 'book'

 root 'book#index'
end
