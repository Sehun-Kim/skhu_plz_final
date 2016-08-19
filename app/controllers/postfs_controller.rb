class PostfsController < ApplicationController
  before_action :set_postf, only: [:show, :edit, :update, :destroy]

  # GET /postfs
  # GET /postfs.json
  def index
    @postfs = Postf.paginate(:page => params[:page], :per_page => 7).order('created_at DESC')
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
  end

  # POST /postfs
  # POST /postfs.json
  def create
    @postf = Postf.new(postf_params)

    respond_to do |format|
      if @postf.save
        format.html { redirect_to @postf, notice: 'Postf was successfully created.' }
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
    respond_to do |format|
      if @postf.update(postf_params)
        format.html { redirect_to @postf, notice: 'Postf was successfully updated.' }
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
    @postf.destroy
    respond_to do |format|
      format.html { redirect_to postfs_url, notice: 'Postf was successfully destroyed.' }
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
