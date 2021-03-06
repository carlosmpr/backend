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
  post '/user_challenges/delete', to: 'user_challenges#delete_challange'

  post '/group_members/delete', to: 'group_members#group_delete'
  post '/group_members/yourmemberships', to: 'group_members#your_groups'


  post '/Allmembers', to: 'groups#all_members'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
