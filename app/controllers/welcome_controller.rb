class WelcomeController < ApplicationController

  def home
    @title = 'love'
  end

  def about
    @title = 'about'
  end

  def lifestyle
    @title = 'lifestyle'
    load_posts
  end

  def fitness
    @title= 'fitness'
    load_posts
  end

  def relationship
    @title= 'relationship'
    load_posts
  end

  def travel
    @title= 'travel'
    load_posts
  end
  def index
    @title= 'all posts'
  end

  def recomendations
    @title= "recomendations"
  end


  private
  def load_posts
    @posts = Post.where(category: @title).order(created_at: :desc)
  end
end
