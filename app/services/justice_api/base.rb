module JusticeApi
  class Base
    class << self
      # build the correct subclass to call
      def connector_class
        "JusticeApi::MonSuiviJustice::#{self.to_s.split("::").last}".constantize
      end

      def format_response(response)
        if response.status == 200
          JSON.parse(response.body, object_class: OpenStruct)
        elsif response.status == 401
          raise "Unauthorized access"
        else
          raise "Error while fetching data from Justice API"
        end
      end

      def find(id, options = {})
        connector_class.find(id) { |response| format_response(response) }
      end
    end
  end
end
