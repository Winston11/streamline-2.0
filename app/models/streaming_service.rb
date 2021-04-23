class StreamingService < ApplicationRecord
    has_many :reviews
    has_many :selections
    has_many :users, through: :reviews

    def avg_score
    reviews.average(:score).round(2).to.f
    end
end
