require 'test_helper'

class MissionsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get missions_show_url
    assert_response :success
  end

end
