Rails.application.routes.draw do
  resources :programing_languages
  resources :groups
  resources :group_members
  resources :code_challenges
  resources :user_challenges
  resources :users

  
  post '/login', to: 'users#login'
  post '/me', to: 'users#me'
  post '/user_challenges/yourchallanges', to: 'user_challenges#your_challange'
  post '/group_members/yourmemberships', to: 'group_members#your_groups'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
