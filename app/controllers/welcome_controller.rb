class WelcomeController < ApplicationController
  def home
    @title = 'risinglove'
  end

  def about
    @title = 'about'
  end

  def collection
    @title= 'lifestyle'
  end

  def fitness
    @title= 'fitness'
  end

  def relationship
    @title= 'relationship'
  end

  def travel
    @title= 'travel'
  end
end
