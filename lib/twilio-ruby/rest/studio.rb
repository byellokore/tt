##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class Studio < Domain
      ##
      # Initialize the Studio Domain
      def initialize(twilio)
        super

        @base_url = 'https://studio.twilio.com'
        @host = 'studio.twilio.com'
        @port = 443

        # Versions
        @v1 = nil
      end

      ##
      # Version v1 of studio
      def v1
        @v1 ||= V1.new self
      end

      ##
      # @param [String] sid A 34 character string that uniquely identifies this Flow.
      # @return [Twilio::REST::Studio::V1::FlowInstance] if sid was passed.
      # @return [Twilio::REST::Studio::V1::FlowList]
      def flows(sid=:unset)
        self.v1.flows(sid)
      end

      ##
      # Provide a user friendly representation
      def to_s
        '#<Twilio::REST::Studio>'
      end
    end
  end
end