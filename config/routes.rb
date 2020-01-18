Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'index',to:'users/registrations#index'
    get 'additional',to:'users/registrations#new_additional'
    post 'additional',to:'users/registrations#create_additional'
    get 'done',to:'users/registrations#done'
  end
    
  root to: 'personals#index'

  resources :personals do
    collection do
      get 'first_page'
      get 'index'
    end
  end
end
