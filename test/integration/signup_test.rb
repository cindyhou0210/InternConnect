require "test_helper"

class SignupTest < ActionDispatch::IntegrationTest
  
  test "invalid signup information" do
    get signup_path
    assert_no_difference 'UserConfid.count' do
      post signup_path, params: { user_confid: { name:  "",
                                        email: "user@invalid",
                                        password:              "pw",
                                        password_confirmation: "pw" } }
    end
    assert_template 'user_confids/new'
  end
end
