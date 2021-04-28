require "test_helper"

class SignupTest < ActionDispatch::IntegrationTest

  def setup
    @review = reviews(:one)
  end

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

  test "valid signup information" do
    get signup_path
    assert_difference 'UserConfid.count', 1 do
      post signup_path, params: { user_confid: { name: "Bob Example",
                                        email: "bob@test.com",
                                        password:              "password",
                                        password_confirmation: "password" } }
    end
    follow_redirect!
    assert_template 'user_confids/show'
  end
end
