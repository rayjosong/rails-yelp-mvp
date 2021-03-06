class ReviewsController < ApplicationController
  # def new
  #   @restaurant = Restaurant.find(params[:restaurant_id])
  #   @review = Review.new
  # end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    # @restaurant.reviews << @review
    @review.restaurant = @restaurant
    # @review.save
    # redirect_to restaurant_path(@restaurant)

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :show
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
