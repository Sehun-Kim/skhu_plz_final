class PostsController < ApplicationController
  before_action :authenticate_user!, only: [ :new, :edit, :create, :update, :destroy ]
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :set_lecture
  

  def index
    @posts = @lecture.posts.paginate(:page => params[:page], :per_page => 7).order('created_at DESC')
    if params[:search]
      @posts = @posts.search(params[:search]).paginate(:page => params[:page], :per_page => 7).order('created_at DESC')
    else
      @posts = @lecture.posts.paginate(:page => params[:page], :per_page => 7).order('created_at DESC')
    end
    
    @hasLike = @lecture.likes.where(lecture_id:@lecture.id, user_id: current_user.id).blank? if current_user
  
  end

  def show
  end

  def new
    @post = @lecture.posts.new
  end

  def edit
    authorize_action_for @post
  end
 
  def like
   if Like.create(user_id: session[:user_id],lecture_id: @lecture.id, user_id: current_user.id)
    redirect_to :back
   else
    render :show, notice: '실패'
   end
  end

  def dislike
    if Like.find_by(user_id: current_user.id,lecture_id: @lecture.id, user_id: current_user.id).destroy
      redirect_to :back
    else
      render :show, notice: '성공'
    end
  end

  def create
    @post = @lecture.posts.new(post_params)
    @post.user = current_user

    respond_to do |format|
      if @post.save
        format.html { redirect_to [@post.lecture, @post], notice: '게시글이 작성되었습니다.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    authorize_action_for @post
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to [@post.lecture, @post], notice: '게시물이 수정되었습니다.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    authorize_action_for @post
    @post.destroy
    respond_to do |format|
      format.html { redirect_to lecture_posts_url, notice: '게시물이 삭제되었습니다.' }
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