require 'test_helper'

class MessageTest < ActiveSupport::TestCase
 
  test 'name, email and body are required by law' do
    msg = Message.new

    refute msg.valid?, 'Blank Mesage should be invalid'

    assert_match /blank/, msg.errors[:name].to_s
    assert_match /blank/, msg.errors[:email].to_s
    assert_match /blank/, msg.errors[:message].to_s
  end
end
