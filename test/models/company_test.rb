require "test_helper"

class CompanyTest < ActiveSupport::TestCase
  test "should not save company with empty fields" do
    company = Company.new
    assert_not company.save
  end
end
