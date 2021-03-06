##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'PhoneCall' do
  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.preview.trusted_comms.phone_calls.create(from: 'from', to: 'to')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'From' => 'from', 'To' => 'to', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://preview.twilio.com/TrustedComms/Business/PhoneCalls',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "sid": "CAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "from": "+15000000000",
          "to": "+573000000000",
          "reason": "Hello Jhon, your appointment has been confirmed.",
          "created_at": "2019-05-01T20:00:00Z",
          "url": "https://preview.twilio.com/TrustedComms/Business/PhoneCalls"
      }
      ]
    ))

    actual = @client.preview.trusted_comms.phone_calls.create(from: 'from', to: 'to')

    expect(actual).to_not eq(nil)
  end
end