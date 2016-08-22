class PostusController < ApplicationController
  before_action :authenticate_user!, only: [ :new, :edit, :create, :update, :destroy ]
  before_action :set_postu, only: [:show, :edit, :update, :destroy]

  # GET /postus
  # GET /postus.json
  def index
    @postus = Postu.paginate(:page => params[:page], :per_page => 7).order('created_at DESC')
    if params[:search]
      @postus = @postus.search(params[:search]).paginate(:page => params[:page], :per_page => 7).order('created_at DESC')
    else
      @postus =  Postu.paginate(:page => params[:page], :per_page => 7).order('created_at DESC')
    end
  end

  # GET /postus/1
  # GET /postus/1.json
  def show
  end

  # GET /postus/new
  def new
    @postu = Postu.new
  end

  # GET /postus/1/edit
  def edit
    authorize_action_for @postu
  end

  # POST /postus
  # POST /postus.json
  def create
    @postu = Postu.new(postu_params)
    @postu.user_id = current_user.id

    respond_to do |format|
      if @postu.save
        format.html { redirect_to @postu, notice: '게시글이 작성되었습니다.' }
        format.json { render :show, status: :created, location: @postu }
      else
        format.html { render :new }
        format.json { render json: @postu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postus/1
  # PATCH/PUT /postus/1.json
  def update
    authorize_action_for @postu
    respond_to do |format|
      if @postu.update(postu_params)
        format.html { redirect_to @postu, notice: '게시글이 수정되었습니다.' }
        format.json { render :show, status: :ok, location: @postu }
      else
        format.html { render :edit }
        format.json { render json: @postu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postus/1
  # DELETE /postus/1.json
  def destroy
    authorize_action_for @postu
    @postu.destroy
    respond_to do |format|
      format.html { redirect_to postus_url, notice: '게시글이 삭제되었습니다.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postu
      @postu = Postu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def postu_params
      params.require(:postu).permit(:title, :content)
    end
end
