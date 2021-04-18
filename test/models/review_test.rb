require "test_helper"

class ReviewTest < ActiveSupport::TestCase
  test "should not save review with empty fields" do
    review = Review.new
    assert_not review.save
  end
end
