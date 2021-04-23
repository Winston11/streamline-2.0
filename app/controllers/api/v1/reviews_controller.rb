module Api
    module V1
    class ReviewsController < ApplicationController
        protect_from_forgery with: :null_session
        before_action :define_variable, only: [:show, :index]

        def index_reviews
            reviews = Review.all
        end

        def create
            review = Review.new(review_params)

            if review.save 
                render json: ReviewSerializer.new(review).serialized_json
            else
                render json: {error: review.errors.messages}, status: 422
        end

        def destroy
            review.Review.find(params[:id])

            if review.destroy
                head :no_content
            else
                render json: { error: review.errors.messages }, status 422
            end
        end

        private
        
        def review_params
            params.require(:review).permit(:comment, :score, :user_id, :service_id)
        end
    end
  end
end