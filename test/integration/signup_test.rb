require "test_helper"

class SignupTest < ActionDispatch::IntegrationTest
  
  test "invalid signup information" do
    get signup_path
    assert_no_difference 'UserConfid.count' do
      post signup_path, params: { user_confid: { name:  "adfs",
                                        email: "user@invalid",
                                        password:              "foo",
                                        password_confirmation: "bar" } }
    end
    assert_template 'user_confids/new'
  end
end
