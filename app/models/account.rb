class Account < ApplicationRecord
  has_many :posts, dependent: :destroy

  validates :code, presence: true
end
