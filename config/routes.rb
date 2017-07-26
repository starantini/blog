Rails.application.routes.draw do
  root 'welcome#home'
    resources :articles
  get 'home' => 'welcome#home'
  get 'about' => 'welcome#about'
  get 'collection' => 'welcome#collection'
  get 'fitness' => 'welcome#fitness'
  get 'relationship' => 'welcome#relationship'
  get 'travel' => 'welcome#travel'
  get 'index' => 'articles#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
