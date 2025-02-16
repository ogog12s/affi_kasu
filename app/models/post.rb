class Post < ApplicationRecord
  validate content: :presence
end
