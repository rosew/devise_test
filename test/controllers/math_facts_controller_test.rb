require 'test_helper'

class MathFactsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should get index" do
    @user = users(:user_1)
    sign_in @user
    get math_facts_url
    assert_response :success
  end

end
