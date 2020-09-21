class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  validates :content, presence: true, length: { maximum: 100 }
  validates :post_id, presence: true
  validates :user_id, presence: true
  default_scope -> { order(created_at: :desc) }
end
