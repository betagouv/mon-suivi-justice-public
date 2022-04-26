module MonSuiviJusticeApi
  class ConvictInvitation < Base
    class << self
      def update(id)
        response = connection.patch("#{BASE_URL}/convicts/#{id}/invitation")

        format_response(response)
      end
    end
  end
end
