class User < ActiveRecord::Base
  has_secure_password
  validates :name, length: {
    minimum: 6,
    maximum: 35,
  }, uniqueness: true
end