Rails.application.routes.draw do
  root 'transactions#index'
  resources :transactions
  get 'transactions' => 'transactions#index'
end
