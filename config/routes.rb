Rails.application.routes.draw do
  root to:'todos#index'
  resources :todos

  post 'todos/:id/toggle', to: 'todos#toggle'
  get 'finished', to: 'todos#finished'
end
