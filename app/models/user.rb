class User < ApplicationRecord
    has_many :reviews, through: :streaming_service
    has_many :streaming_services
    has_many :user_servoces
end
