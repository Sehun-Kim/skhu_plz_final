class PostusController < ApplicationController
  before_action :set_postu, only: [:show, :edit, :update, :destroy]

  # GET /postus
  # GET /postus.json
  def index
    @postus = Postu.paginate(:page => params[:page], :per_page => 7).order('created_at DESC')
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
  end

  # POST /postus
  # POST /postus.json
  def create
    @postu = Postu.new(postu_params)

    respond_to do |format|
      if @postu.save
        format.html { redirect_to @postu, notice: 'Postu was successfully created.' }
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
    respond_to do |format|
      if @postu.update(postu_params)
        format.html { redirect_to @postu, notice: 'Postu was successfully updated.' }
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
    @postu.destroy
    respond_to do |format|
      format.html { redirect_to postus_url, notice: 'Postu was successfully destroyed.' }
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
