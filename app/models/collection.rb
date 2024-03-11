class Collection < ApplicationRecord
  belongs_to :user
  validates :item, presence: true
  validates :caption, presence: true
end
