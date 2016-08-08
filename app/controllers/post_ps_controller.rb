class PostPsController < ApplicationController
  before_action :set_post_p, only: [:show, :edit, :update, :destroy]

  # GET /post_ps
  # GET /post_ps.json
  def index
    @post_ps = PostP.all
  end

  # GET /post_ps/1
  # GET /post_ps/1.json
  def show
  end

  # GET /post_ps/new
  def new
    @post_p = PostP.new
  end

  # GET /post_ps/1/edit
  def edit
  end

  # POST /post_ps
  # POST /post_ps.json
  def create
    @post_p = PostP.new(post_p_params)

    respond_to do |format|
      if @post_p.save
        format.html { redirect_to @post_p, notice: 'Post p was successfully created.' }
        format.json { render :show, status: :created, location: @post_p }
      else
        format.html { render :new }
        format.json { render json: @post_p.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_ps/1
  # PATCH/PUT /post_ps/1.json
  def update
    respond_to do |format|
      if @post_p.update(post_p_params)
        format.html { redirect_to @post_p, notice: 'Post p was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_p }
      else
        format.html { render :edit }
        format.json { render json: @post_p.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_ps/1
  # DELETE /post_ps/1.json
  def destroy
    @post_p.destroy
    respond_to do |format|
      format.html { redirect_to post_ps_url, notice: 'Post p was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_p
      @post_p = PostP.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_p_params
      params.require(:post_p).permit(:title, :description)
    end
end
