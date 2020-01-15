Rails.application.routes.draw do
  root to: 'personals#index'
  resources :personals do
    collection do
      get 'index'
      get 'first_page'
      
    end
  end
end
