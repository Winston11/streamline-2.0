class StreamingServiceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :score, :price

  has_many :reviews
end

