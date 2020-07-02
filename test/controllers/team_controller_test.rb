require 'test_helper'

class TeamControllerTest < ActionDispatch::IntegrationTest
  test "should get add" do
    get team_add_url
    assert_response :success
  end

end
