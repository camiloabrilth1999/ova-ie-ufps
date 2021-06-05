Rails.application.routes.draw do
  devise_for :users, 
  path: "", 
  controllers: { 
    sessions: "users/sessions", 
    registrations: "users/registrations", 
    passwords: "users/passwords",
    confirmations: "users/confirmations" 
  }, 
  path_names: { 
    sign_in: 'login', 
    password: 'forgot', 
    confirmation: 'confirm', 
    unlock: 'unblock', 
    sign_up: 'register',
    sign_out: 'signout'
  }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_scope :user do
    root to: "devise/sessions#new"
  end
end
