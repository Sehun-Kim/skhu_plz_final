class PostFsController < ApplicationController
  before_action :set_post_f, only: [:show, :edit, :update, :destroy]

  # GET /post_fs
  # GET /post_fs.json
  def index
    @post_fs = PostF.all
  end

  # GET /post_fs/1
  # GET /post_fs/1.json
  def show
  end

  # GET /post_fs/new
  def new
    @post_f = PostF.new
  end

  # GET /post_fs/1/edit
  def edit
  end

  # POST /post_fs
  # POST /post_fs.json
  def create
    @post_f = PostF.new(post_f_params)

    respond_to do |format|
      if @post_f.save
        format.html { redirect_to @post_f, notice: 'Post f was successfully created.' }
        format.json { render :show, status: :created, location: @post_f }
      else
        format.html { render :new }
        format.json { render json: @post_f.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_fs/1
  # PATCH/PUT /post_fs/1.json
  def update
    respond_to do |format|
      if @post_f.update(post_f_params)
        format.html { redirect_to @post_f, notice: 'Post f was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_f }
      else
        format.html { render :edit }
        format.json { render json: @post_f.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_fs/1
  # DELETE /post_fs/1.json
  def destroy
    @post_f.destroy
    respond_to do |format|
      format.html { redirect_to post_fs_url, notice: 'Post f was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_f
      @post_f = PostF.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_f_params
      params.require(:post_f).permit(:title, :description)
    end
end
