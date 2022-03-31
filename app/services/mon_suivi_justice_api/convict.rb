module MonSuiviJusticeApi
  class Convict < Base
    class << self
      def find(id)
        response = connection.get("#{BASE_URL}/convicts/#{id}")
        raise ActiveRecord::RecordNotFound if response.nil?

        format_response(response)
      end
    end
  end
end
