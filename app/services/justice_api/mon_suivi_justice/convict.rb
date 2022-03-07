module JusticeApi
  module MonSuiviJustice
    class Convict < Base
      class << self
        def find(id)
          yield(connection.get("#{BASE_URL}/convicts/#{id}"))
        end
      end
    end
  end
end
