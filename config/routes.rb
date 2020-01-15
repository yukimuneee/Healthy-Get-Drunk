Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
    

  root to: 'personals#index'

  resources :personals do
    collection do
      get 'first_page'
      get 'index'
    end
  end
end
