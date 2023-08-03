class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :post_image
  validates_uniqueness_of :book_id, scope: :user_id
end
