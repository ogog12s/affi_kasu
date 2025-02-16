class Affiliate < ApplicationRecord
  has_one :video, dependent: :destroy

  validates :link, presence: true
end
