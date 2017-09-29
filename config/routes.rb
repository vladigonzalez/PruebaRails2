Rails.application.routes.draw do

  get 'listasks/create'
  get 'listasks/show'
  #get 'tasks/index'
  resources :tasks, only: [:index, :show] do
    resources :listasks, only: :create
  end

  resources :listasks

  # ruta inicial de localhost
  #http://localhost:3000
  root to: 'tasks#index'

  #devise_for :users,
  #resources :home, only: [:index]
  devise_for :users, controllers: { registrations: 'users/registrations',
                                    sessions: 'users/sessions'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
