class SelectionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :quote
end
