require "test_helper"

class SupportRequestMailerTest < ActionMailer::TestCase
  test "respond" do
    mail = SupportRequestMailer.respond(support_requests(:one))
    assert_equal "Re: SubjectOne", mail.subject
    assert_equal ["test@one.com"], mail.to
    assert_equal ["jainabhishek7204@gmail.com"], mail.from
    assert_match /BodyOne/, mail.body.encoded
  end

end
