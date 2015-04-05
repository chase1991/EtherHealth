class User < ActiveRecord::Base
	validates :username, presence: true, length: {maximum: 50}, 
				uniqueness: {case_sensitive: false}
	validates :email, presence: true, length: {maximum: 100},
				uniqueness: {case_sensitive: false}
	validates :password, presence: true, length: {maximum: 200}
	has_many :questions
end
