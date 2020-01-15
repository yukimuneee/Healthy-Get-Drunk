Rails.application.routes.draw do
  devise_for :users
  # devise_for :users, controllers: {
  #   registrations: 'users/registrations'

  root to: 'personals#index'

  resources :personals do
    collection do
      get 'index'
      get 'first_page'
    end
  end
end
