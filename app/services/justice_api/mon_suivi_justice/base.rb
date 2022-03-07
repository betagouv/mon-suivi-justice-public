module JusticeApi
  module MonSuiviJustice
    class Base < JusticeApi::Base
      class << self
        BASE_URL = "https://agents.mon-suivi-justice.beta.gouv.fr/api/v1"
        USERNAME = Rails.application.credentials.dig(:justice_api, :mon_suivi_justice, :username)
        PASSWORD = Rails.application.credentials.dig(:justice_api, :mon_suivi_justice, :password)

        def connection
          Faraday.new { |conn| conn.request :authorization, :basic, USERNAME, PASSWORD }
        end
      end
    end
  end
end
