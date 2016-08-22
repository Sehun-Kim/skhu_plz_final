class PostfsController < ApplicationController
  before_action :authenticate_user!, only: [ :new, :edit, :create, :update, :destroy ]
  before_action :set_postf, only: [:show, :edit, :update, :destroy]

  # GET /postfs
  # GET /postfs.json
  def index
    @postfs = Postf.paginate(:page => params[:page], :per_page => 7).order('created_at DESC')
    if params[:search]
      @postfs = @postfs.search(params[:search]).paginate(:page => params[:page], :per_page => 7).order('created_at DESC')
    else
      @postfs =  Postf.paginate(:page => params[:page], :per_page => 7).order('created_at DESC')
    end
  end

  # GET /postfs/1
  # GET /postfs/1.json
  def show
  end

  # GET /postfs/new
  def new
    @postf = Postf.new
  end

  # GET /postfs/1/edit
  def edit
    authorize_action_for @postf
  end

  # POST /postfs
  # POST /postfs.json
  def create
    @postf = Postf.new(postf_params)
    @postf.user_id = current_user.id

    respond_to do |format|
      if @postf.save
        format.html { redirect_to @postf, notice: '게시글이 작성되었습니다.' }
        format.json { render :show, status: :created, location: @postf }
      else
        format.html { render :new }
        format.json { render json: @postf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postfs/1
  # PATCH/PUT /postfs/1.json
  def update
    authorize_action_for @postf
    respond_to do |format|
      if @postf.update(postf_params)
        format.html { redirect_to @postf, notice: '게시글이 수정되었습니다.' }
        format.json { render :show, status: :ok, location: @postf }
      else
        format.html { render :edit }
        format.json { render json: @postf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postfs/1
  # DELETE /postfs/1.json
  def destroy
    authorize_action_for @postf
    @postf.destroy
    respond_to do |format|
      format.html { redirect_to postfs_url, notice: '게시글이 삭제되었습니다.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postf
      @postf = Postf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def postf_params
      params.require(:postf).permit(:title, :content)
    end
end
