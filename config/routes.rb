Rails.application.routes.draw do
  resources :websites, :only => [:index, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "websites#index"

  resources :bookmark, :only => [:new]
end
