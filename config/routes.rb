Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :workers, only: [:index, :show, :update, :destroy]
        resources :shops, only: [:index, :create, :show, :update, :destroy]
        resources :upgrades, only: [:index, :show, :destroy]
      end
    end
  end
end
