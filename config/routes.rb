Rails.application.routes.draw do
  resources :dogs
  resources :employees

  get '/modified_index', to: "employees#modified_index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
