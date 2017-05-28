Rails.application.routes.draw do
  resources :bookmarks, :only => [:create, :new, :destroy, :edit, :update]
  resources :websites, :only => [:index, :destroy, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "websites#index"
end
