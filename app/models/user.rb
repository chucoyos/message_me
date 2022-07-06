class User < ApplicationRecord
	has_secure_password
	validates :username, presence: true, uniqueness: true
	validates :password, presence: true, length: { minimum: 6, maximum: 20 }
end
