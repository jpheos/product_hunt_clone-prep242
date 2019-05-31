require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "full_name" do
    user = User.new(first_name: 'toto', last_name: 'dupont')
    assert_equal user.full_name, 'toto dupont'
  end
end
