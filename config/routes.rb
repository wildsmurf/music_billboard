Rails.application.routes.draw do
root 'billboards#index'
  resources :artists do
    resources :songs
  end

resources :billboards

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
