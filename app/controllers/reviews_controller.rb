class ReviewsController < ApplicationController
  before_action :set_restaurant, only: [:new, :create, :update, :delete]
  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = Review.new
  end

  def create
    @review = @restaurant.reviews.build(review_params)
    @review.save
    redirect_to restaurant_path(@review.restaurant)
  end

  def edit
  end

  def update
    @review.update(review_params)
    redirect_to restaurant_path(@restaurant.id)
  end

  def delete
    @review.destroy
    redirect_to restaurant_review_path
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
