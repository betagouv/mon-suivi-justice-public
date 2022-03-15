module MonSuiviJusticeApi
  class Base
    class << self
      BASE_URL = ENV["MSJ_API_URL"]
      USERNAME = Rails.application.credentials.dig(:justice_api, :mon_suivi_justice, :username)
      PASSWORD = Rails.application.credentials.dig(:justice_api, :mon_suivi_justice, :password)

      def connection
        Faraday.new { |conn| conn.request :authorization, :basic, USERNAME, PASSWORD }
      end

      def format_response(response)
        if response.status == 200
          JSON.parse(response.body, object_class: OpenStruct)
        elsif response.status == 401
          raise "Unauthorized access"
        elsif response.status == 404
          nil
        else
          raise "Error while fetching data from #{CONNECTOR} API"
        end
      end
    end
  end
end
