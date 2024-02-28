class Collection < ApplicationRecord
  belongs_to :user
  validates :item, presence: true
  validates :size, presence: true
end
