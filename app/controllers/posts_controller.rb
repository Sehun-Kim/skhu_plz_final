class PostsController < ApplicationController
  before_action :authenticate_user!, only: [ :new, :edit, :create, :update, :destroy ]
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :set_lecture
  

  def index
    @posts = @lecture.posts.paginate(:page => params[:page], :per_page => 7).order('created_at DESC')
  end

  def show
  end

  def new
    @post = @lecture.posts.new
  end

  def edit
  end

  def create
    @post = @lecture.posts.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to [@post.lecture, @post], notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to [@post.lecture, @post], notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to lecture_posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_lecture
      @lecture = Lecture.find(params[:lecture_id])
    end

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :content)
    end
end