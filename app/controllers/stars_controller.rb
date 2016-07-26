class StarsController < ApplicationController
  before_action :authenticate_user!, only: [ :create, :edit, :update, :destroy ]
  
  
  def create
    Star.create(lecture_id: params[:id], user_id: current_user.id, score: params[:rating].to_i)
    redirect_to :back
  end

  def destroy
   
  end
end
