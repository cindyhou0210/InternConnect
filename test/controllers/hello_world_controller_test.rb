require "test_helper"

class HelloWorldControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get hello_world_home_url
    assert_response :success
  end
end
