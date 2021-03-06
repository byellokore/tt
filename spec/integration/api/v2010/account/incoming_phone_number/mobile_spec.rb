##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'Mobile' do
  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .incoming_phone_numbers \
                       .mobile.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/IncomingPhoneNumbers/Mobile.json',
    ))).to eq(true)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "end": 0,
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IncomingPhoneNumbers/Mobile.json?Page=0&PageSize=50",
          "incoming_phone_numbers": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "address_requirements": "none",
                  "address_sid": "ADaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "api_version": "2010-04-01",
                  "beta": null,
                  "capabilities": {
                      "mms": false,
                      "sms": true,
                      "voice": false
                  },
                  "date_created": "Tue, 08 Sep 2015 16:21:16 +0000",
                  "date_updated": "Tue, 08 Sep 2015 16:21:16 +0000",
                  "friendly_name": "61429099450",
                  "identity_sid": "RIaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "phone_number": "+61429099450",
                  "origin": "origin",
                  "sid": "PNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "sms_application_sid": "",
                  "sms_fallback_method": "POST",
                  "sms_fallback_url": "",
                  "sms_method": "POST",
                  "sms_url": "",
                  "status_callback": "",
                  "status_callback_method": "POST",
                  "trunk_sid": null,
                  "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IncomingPhoneNumbers/PNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
                  "voice_application_sid": "",
                  "voice_caller_id_lookup": false,
                  "voice_fallback_method": "POST",
                  "voice_fallback_url": null,
                  "voice_method": "POST",
                  "voice_url": null
              }
          ],
          "last_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IncomingPhoneNumbers/Mobile.json?Page=0&PageSize=50",
          "next_page_uri": null,
          "num_pages": 1,
          "page": 0,
          "page_size": 50,
          "previous_page_uri": null,
          "start": 0,
          "total": 1,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IncomingPhoneNumbers/Mobile.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .incoming_phone_numbers \
                              .mobile.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "end": 0,
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IncomingPhoneNumbers/Mobile.json?Page=0&PageSize=50",
          "incoming_phone_numbers": [],
          "last_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IncomingPhoneNumbers/Mobile.json?Page=0&PageSize=50",
          "next_page_uri": null,
          "num_pages": 1,
          "page": 0,
          "page_size": 50,
          "previous_page_uri": null,
          "start": 0,
          "total": 1,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IncomingPhoneNumbers/Mobile.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .incoming_phone_numbers \
                              .mobile.list()

    expect(actual).to_not eq(nil)
  end

  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .incoming_phone_numbers \
                       .mobile.create(phone_number: '+15017122661')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'PhoneNumber' => '+15017122661', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/IncomingPhoneNumbers/Mobile.json',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "address_requirements": "none",
          "address_sid": "ADaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "api_version": "2010-04-01",
          "beta": false,
          "capabilities": {
              "mms": true,
              "sms": false,
              "voice": true
          },
          "date_created": "Thu, 30 Jul 2015 23:19:04 +0000",
          "date_updated": "Thu, 30 Jul 2015 23:19:04 +0000",
          "identity_sid": "RIaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "friendly_name": "(808) 925-5327",
          "phone_number": "+18089255327",
          "origin": "origin",
          "sid": "PNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "sms_application_sid": "",
          "sms_fallback_method": "POST",
          "sms_fallback_url": "",
          "sms_method": "POST",
          "sms_url": "",
          "status_callback": "",
          "status_callback_method": "POST",
          "trunk_sid": null,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IncomingPhoneNumbers/PNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
          "voice_application_sid": "",
          "voice_caller_id_lookup": false,
          "voice_fallback_method": "POST",
          "voice_fallback_url": null,
          "voice_method": "POST",
          "voice_url": null
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .incoming_phone_numbers \
                              .mobile.create(phone_number: '+15017122661')

    expect(actual).to_not eq(nil)
  end
end