require "test_helper"

class ProgramTest < ActiveSupport::TestCase
  test "should not save program with empty fields" do
    program = Program.new
    assert_not program.save
  end
end
