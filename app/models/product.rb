class Product < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, :title, presence: true,
                    length: { minimum: 5 }
end
