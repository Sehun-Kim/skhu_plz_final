class StarsController < ApplicationController
  before_action :authenticate_user!, only: [ :create, :destroy ]
  before_action :set_lecture
  before_action :set_star, only: :destroy
  
  
  def create
    @star = @lecture.stars.new
    @star.lecture_id = params[:id]
    @star.score = params[:rating].to_i
    @star.user = current_user
    @star.save
    redirect_to :back
  end

  def destroy
    @star.destroy
  end
  
  private
  
    def set_lecture
      @lecture = Lecture.find(params[:lecture_id])
    end
    
    def set_star
      @star = @lecture.stars.find(params[:id])
    end
    
    def star_params
      params.require(:star).permit(:score)
    end
end
