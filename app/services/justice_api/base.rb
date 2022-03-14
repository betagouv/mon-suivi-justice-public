module JusticeApi
  class Base
    class << self
      CONNECTOR = "MonSuiviJustice"

      def format_response(response)
        if response.status == 200
          JSON.parse(response.body, object_class: OpenStruct)
        elsif response.status == 401
          raise "Unauthorized access"
        elsif response.status == 404
          nil
        else
          raise "Error while fetching data from Justice API"
        end
      end
    end
  end
end
