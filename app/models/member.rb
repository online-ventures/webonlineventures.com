class Member < ActiveRecord::Base
	include Gravtastic

	gravtastic :gravatar_email
	
	before_validation :create_slug

	validates :name, :email, presence: true

	def create_slug
		self.slug = name.downcase.gsub(/\s+/, '-') if name
	end

	def gravatar_email
		super || email
	end
end
