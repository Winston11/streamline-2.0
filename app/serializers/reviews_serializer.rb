class ReviewsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :comment, :score, :owner_id, :service_id
end
