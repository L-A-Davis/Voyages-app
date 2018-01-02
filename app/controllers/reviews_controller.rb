class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    if @review.valid?
      @review.save
      redirect_to place_path(@review.place)
    else
      render '/places/show'
   end
 end

 def edit
   @review = Review.find(params[:id])
 end

 def update
   @review = Review.find(params[:id])
   if @review.valid?
     @review.update(review_params)
     redirect_to place_path(@review.place)
   else
     render '/places/show'
  end
end


private

def review_params
  params.require(:review).permit(:title, :content, :rating, :user_id, :place_id)
end

end
