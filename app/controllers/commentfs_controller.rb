class CommentfsController < ApplicationController
  before_action :set_postf
  before_action :authenticate_user!, only: [ :create, :destroy ]
  before_action :set_commentf, only: :destroy

  def create
    @commentf = @postf.commentfs.new(commentf_params)
    @commentf.user = current_user
    @commentf.save
  end

  def destroy
    @commentf.destroy
  end

  private

  def set_postf
    @postf = Postf.find(params[:postf_id])
  end

  def set_commentf
    @commentf = @postf.commentfs.find(params[:id])
  end

  def commentf_params
    params.require(:commentf).permit(:body)
  end
end