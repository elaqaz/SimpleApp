

require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "should be valid" do
    user = User.new(name: "Example User", email: "user@example.com")
    assert user.valid?
  end

  test "name should be present" do
    user = User.new(name: "", email: "user@example.com")
    assert_not user.valid?
  end

  test "email should be present" do
    user = User.new(name: "Example User", email: "")
    assert_not user.valid?
  end
end
