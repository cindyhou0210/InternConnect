require "test_helper"

class LoginTestsTest < ActionDispatch::IntegrationTest
  
  def setup
    @user = user_confids(:one)
  end

  test "login with valid information" do
    get login_path
    post login_path, params: { session: { email:    @user.email,
                                          password: 'password' } }
    assert_redirected_to reviews_path
    follow_redirect!
    assert_template 'reviews/index'
    assert_select "a[href=?]", login_path, count: 0
    assert_select "a[href=?]", logout_path
    assert_select "a[href=?]", user_page_path
  end
end
