module JusticeApi
  class Convict < Base
    class << self
      def find(id)
        "JusticeApi::#{CONNECTOR}::Convict".constantize.find(id) do |response|
          format_response(response)
        end
      end
    end
  end
end
