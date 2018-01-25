Rails.application.routes.draw do
  get 'welcome/index'

  #routing to be fixed later
  resources :tasks

  resources :categories do
    resources :tasks
  end

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
