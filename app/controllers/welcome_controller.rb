class WelcomeController < ApplicationController

  def home
    @title = 'risinglove'
  end

  def about
    @title = 'about'
  end

  def lifestyle
    @title = 'lifestyle'
    load_articles
  end

  def fitness
    @title= 'fitness'
    load_articles
  end

  def relationship
    @title= 'relationship'
    load_articles
  end

  def travel
    @title= 'travel'
    load_articles
  end

  private
  def load_articles
    @articles = Article.where(category: @title).order(created_at: :desc)
  end
end
