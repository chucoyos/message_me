class User < ApplicationRecord
	has_secure_password
	validates :username, presence: true, uniqueness: { case_sensitive: false }
	validates :password, presence: true, length: { minimum: 6, maximum: 20 }
	has_many :messages
end
