require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest

  test "POST create" do
    assert_difference 'ActionMailer::Base.deliveries.size', 1 do
      post create_message_url, params: {
        message: {
          name: 'cornholio',
          email: 'cornholio@example.org',
          message: 'hai'
        }
      }
    end

    assert_redirected_to new_message_url

    follow_redirect!

    assert_match /Message received, thanks!/, response.body
  end

  # other test omitted

end