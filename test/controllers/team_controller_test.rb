require 'test_helper'

class TeamControllerTest < ActionController::TestCase
  setup do
    @member = members(:jacob)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:members)
  end

  test "should show member" do
    get :show, id: @member
    assert_response :success
  end

  test "should show member from slug name" do
  	get :show, id: @member.name
	assert_response :success
  end

end
