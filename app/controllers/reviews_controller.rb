class ReviewsController < ApplicationController

before_action :ensure_current_user_is_owner, :only => [:update, :destroy, :edit]

  def index
    @reviews = current_user.reviews
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new
    @review.vendor_id = params[:vendor_id]
    @review.review = params[:review]
    @review.rating = params[:rating]
    @review.user_id = current_user.id
    @review.project_name = params[:project_name]

    if @review.save
      redirect_to "/vendors/#{@review.vendor_id}", :notice => "Review created successfully."
    else
      render 'new'
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])

    @review.vendor_id = params[:vendor_id]
    @review.review = params[:review]
    @review.rating = params[:rating]
    @review.user_id = params[:user_id]
    @review.project_name = params[:project_name]

    if @review.save
      redirect_to "/reviews", :notice => "Review updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @review = Review.find(params[:id])

    @review.destroy

    redirect_to "/reviews", :notice => "Review deleted."
  end
end
