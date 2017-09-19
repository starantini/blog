class WelcomeController < ApplicationController

  def home
    @title = 'us'
    @subscriber = Subscriber.new(params[:subscriber])
    @posts = Post.paginate(page: params[:page], per_page: 7).order('created_at DESC')
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
  def downloads
    @title= 'downloads'
  end
  def joinus
    @title= 'subscribe'
    @subscriber = Subscriber.new(params[:subscriber])
  end
  def store
    @title= 'store'
  end
  def steve
    @title= 'steve'
  end
  def download_png
      send_file(
          "#{Rails.root}/public/Bannershot1.png",
          filename: "Bannershot1.png",
          type: "application/png"
      )
  end
  def download_mp3
      send_file(
          "#{Rails.root}/public/songforfamily.mp3",
          filename: "songforfamily.mp3",
          type: "application/mp3"
      )
  end



  private
  def load_posts
    @posts = Post.where(category: @title).order(created_at: :desc)
  end
end
