##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class Studio
      class V1 < Version
        ##
        # Initialize the V1 version of Studio
        def initialize(domain)
          super
          @version = 'v1'
          @flows = nil
        end

        ##
        # @param [String] sid A 34 character string that uniquely identifies this Flow.
        # @return [Twilio::REST::Studio::V1::FlowContext] if sid was passed.
        # @return [Twilio::REST::Studio::V1::FlowList]
        def flows(sid=:unset)
          if sid.nil?
            raise ArgumentError, 'sid cannot be nil'
          elsif sid == :unset
            @flows ||= FlowList.new self
          else
            FlowContext.new(self, sid)
          end
        end

        ##
        # Provide a user friendly representation
        def to_s
          '<Twilio::REST::Studio::V1>'
        end
      end
    end
  end
end