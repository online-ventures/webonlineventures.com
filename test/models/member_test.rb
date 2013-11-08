require 'test_helper'

class MemberTest < ActiveSupport::TestCase
	def setup
		@jacob = members(:jacob)
		@nick = members(:nick)
	end

	def teardown
		@member = nil
	end

	test "gravatar email and email are different" do
		assert_not_equal @jacob.email, @jacob.gravatar_email
	end

	test "gravatar email defaults to email" do
		assert_equal @nick.email, @nick.gravatar_email
	end
end
