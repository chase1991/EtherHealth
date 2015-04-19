class Question < ActiveRecord::Base

	validates :description, presence: true, length: {maximum: 250}

end
