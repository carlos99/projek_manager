require 'test_helper'

class TaskMailerTest < ActionMailer::TestCase
  test "confirm_task" do
    mail = TaskMailer.confirm_task
    assert_equal "Confirm task", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
