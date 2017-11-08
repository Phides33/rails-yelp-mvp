class Admin::ReviewsController < ApplicationController
  before_action :find_review, only: [:edit, :update, :destroy]

  def edit
  end

  def update
    @review.update(review_params)
    redirect_to review_path(@review)
  end

  def destroy
    @review.destroy
    redirect_to root_path
  end

private
  def review_params
    params.require(:review).permit(:content, :rating)
  end
  def find_review
    @review = Review.find(params[:id])
  end
end
