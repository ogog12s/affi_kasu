class Account < ApplicationRecord
  validate code: :presence
end
