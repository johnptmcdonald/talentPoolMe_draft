class LikesController < ApplicationController
  def create
  	@like = Like.create(like_params)
    @employer = @like.employer
    render :toggle
  end

  def destroy
    like = Like.find(params[:id]).destroy
    @employer = like.employer
    render :toggle
  end


  private
    def like_params
      params.require(:like).permit(:user_id, :employer_id)
    end


end
