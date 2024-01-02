require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:user_one)
    sign_in @user
  end

  test "should get dashboard" do
    get dashboard_url
    assert_response :success
  end

  test "should get landing_page" do
    get landing_page_url
    assert_response :success
  end
end
