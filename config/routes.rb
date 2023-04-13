Rails.application.routes.draw do
  root to: 'places#index'
  resources :places do
    post 'create_comment', on: :member
    post 'create_rating', on: :member
  end
end
