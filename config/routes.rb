Rails.application.routes.draw do
  root 'welcome#home'
    # resources :articles
  root to: 'posts#index'
      resources :posts
  get 'home' => 'welcome#home'
  get 'about' => 'welcome#about'
  get 'lifestyle' => 'welcome#lifestyle'
  get 'fitness' => 'welcome#fitness'
  get 'relationship' => 'welcome#relationship'
  get 'travel' => 'welcome#travel'
  # get 'index' => 'articles#index'
  get 'nothing' => 'welcome#nothing'
  get 'recomendations' => 'welcome#recomendations'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
