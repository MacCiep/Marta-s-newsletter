class User < ApplicationRecord

  scope :with_active, -> { where(active: true).order(last_send: :desc)}
end