Rails.application.routes.draw do
  namespace :blog do
    resources :posts, controller: 'posts/'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
