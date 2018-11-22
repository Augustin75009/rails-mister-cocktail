Rails.application.routes.draw do
  get 'doses/new'
  get 'doses/index'
  delete "cocktails/:id", to: "cocktails#destroy", as: :destroy
  delete "doses/:id", to: "doses#destroy", as: :dose_destroy
  resources :cocktails do
    resources :doses
  end
  resources :doses, only: [:edit, :new, :destroy]

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
