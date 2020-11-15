Rails.application.routes.draw do

  root 'welcome#index'
  
  resources :lists
  resources :cards do
    resources :lists
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
