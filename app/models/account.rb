class Account < ApplicationRecord
  validates :code, presence: true
end
