Rails.application.routes.draw do
  root 'welcome#home'
  root to: 'posts#index'
      resources :posts
  get 'home' => 'welcome#home'
  get 'about' => 'welcome#about'
  get 'lifestyle' => 'welcome#lifestyle'
  get 'fitness' => 'welcome#fitness'
  get 'relationship' => 'welcome#relationship'
  get 'travel' => 'welcome#travel'
  get 'nothing' => 'welcome#nothing'
  get 'recomendations' => 'welcome#recomendations'
  get 'signup'  => 'users#new'
      resources :users
  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
