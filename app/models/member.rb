class Member < ActiveRecord::Base
	before_validation :create_slug

	def create_slug
		self.slug = name.downcase.gsub(/\s+/, '-') if name
	end
end
