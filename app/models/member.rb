class Member < ActiveRecord::Base
	include Gravtastic

	gravtastic :gravatar_email
	
	validates :name, :email, presence: true

	def gravatar_email
		super || email
	end
end
