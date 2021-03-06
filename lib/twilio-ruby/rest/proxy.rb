##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /

module Twilio
  module REST
    class Proxy < Domain
      ##
      # Initialize the Proxy Domain
      def initialize(twilio)
        super

        @base_url = 'https://proxy.twilio.com'
        @host = 'proxy.twilio.com'
        @port = 443

        # Versions
        @v1 = nil
      end

      ##
      # Version v1 of proxy
      def v1
        @v1 ||= V1.new self
      end

      ##
      # @param [String] sid A 34 character string that uniquely identifies this Service.
      # @return [Twilio::REST::Proxy::V1::ServiceInstance] if sid was passed.
      # @return [Twilio::REST::Proxy::V1::ServiceList]
      def services(sid=:unset)
        self.v1.services(sid)
      end

      ##
      # Provide a user friendly representation
      def to_s
        '#<Twilio::REST::Proxy>'
      end
    end
  end
end