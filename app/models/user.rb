class User < ApplicationRecord

  validates :name, :email, presence: true, length: { minimum: 1 }
  validates :email, uniqueness: true
  validates_format_of :email,
                      :with => /\A(\S+)@(.+)\.(\S+)\z/


  scope :with_active, -> { where(active: true).order(last_send: :desc)}
end