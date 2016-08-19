class CommentusController < ApplicationController
  before_action :set_postu
  before_action :authenticate_user!, only: [ :create, :destroy ]
  before_action :set_commentu, only: :destroy

  def create
    @commentu = @postu.commentus.new(commentu_params)
    @commentu.user = current_user
    @commentu.save
  end

  def destroy
    @commentu.destroy
  end

  private

  def set_postu
    @postu = Postu.find(params[:postu_id])
  end

  def set_commentu
    @commentu = @postu.commentus.find(params[:id])
  end

  def commentu_params
    params.require(:commentu).permit(:body)
  end
end