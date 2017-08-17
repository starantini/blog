class WelcomeController < ApplicationController

  def home
    @title = 'love'
    @posts = Post.paginate(page: params[:page], per_page: 10).order('created_at DESC')
    puts @posts.count
    respond_to do |format|
      format.html
      format.js { render 'welcome/post_page' }
    end
  end

  def show
  @user = User.find(params[:id])
  @post = Post.new
  @posts = Post.where("post_id = ? or receiver_id = ?", @post.id, @post.id).paginate(page: params[:page])
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
    @title= 'recomends'
  end


  private
  def load_posts
    @posts = Post.where(category: @title).order(created_at: :desc)
  end
end
