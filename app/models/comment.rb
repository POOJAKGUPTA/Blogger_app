class Comment < ApplicationRecord
  belongs_to :blog
  has_many :replies, dependent: :destroy
  belongs_to :user
end
