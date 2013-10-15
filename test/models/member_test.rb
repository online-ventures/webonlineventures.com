require 'test_helper'

class MemberTest < ActiveSupport::TestCase
	def setup
		@member = members(:jacob)
	end

	test "slug is properly created" do
		member = Member.new({ name: 'Jacob Evan Shreve' })
		member.save
		assert_equal 'jacob-evan-shreve', member.slug
	end
end
