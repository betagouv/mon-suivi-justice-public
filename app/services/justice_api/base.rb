module JusticeApi
  class Base
    ALLOWED_CONNECTORS = ["MonSuiviJustice"]

    class WrongConnectorError < StandardError
      def initialize(msg = "Connector has to be on the following: #{ALLOWED_CONNECTORS.join(", ")}")
        super(msg)
      end
    end

    class Convict < Base; end

    class << self
      # build the correct subclass to call depending on the connector used
      def connector_class(ressource: "Base", connector: nil)
        connector = connector || ENV['JUSTICE_API_CONNECTOR']
        raise WrongConnectorError unless ALLOWED_CONNECTORS.include?(connector)

        "JusticeApi::#{connector}::#{ressource}".constantize
      end

      def response
        JSON.parse(raw_response.to_s, object_class: OpenStruct) if raw_response.present?
      end

      def find(id, options = {})
        connector_class(ressource: self.to_s.split("::").last,
                        connector: options[:connector]).find(id)
      end
    end
  end
end
