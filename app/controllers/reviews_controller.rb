class ReviewsController < ApplicationController
before_action :load_product

  def show
    @review = Review.find(params[:id])
  end

  def create
    @review = @product.reviews.build(review_params)
    @review.user = current_user

  end

  def destroy
  end
end
