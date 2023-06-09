Rails.application.routes.draw do
  scope '(:locale)', locale: /es|en/ do 
    get 'home/greetings'

    namespace :v1, defaults: { format: 'json' } do 
      resources :users, only: [:create] do
        post 'login', on: :collection
      end
      
      resources :stores
      resources :products
    end
  end 
end

