# Documentation in a PDF named "Netsize Implementation Guide, REST API - SMS.pdf"
class LinkMobilityAdapter
  def initialize
    @client = Faraday.new(
      url: "https://europe.ipx.com"
    ) do |conn|
      conn.request :authorization, :basic, ENV["LM_ACCOUNT"], ENV["LM_PWD"]
    end
  end

  def send_sms(convict, content)
    sms_data = format_data(convict, content)

    response = @client.post("/restapi/v1/sms/send") do |req|
      req.headers["Content-Type"] = "application/x-www-form-urlencoded; charset=UTF-8"
      req.body = URI.encode_www_form(sms_data)
    end

    save_text_message(convict, content, response)
  end

  def format_data(convict, content)
    {
      destinationAddress: convict.phone,
      messageText: content,
      originatorTON: 1,
      originatingAddress: "RDVJustice",
      maxConcatenatedMessages: 10
    }
  end

  def save_text_message(convict, content, response)
    response_hash = JSON.parse(response.body)

    if (response_hash["responseCode"]).zero?
      TextMessage.create(
        message_id: response_hash["messageIds"].first,
        content:,
        phone: convict.phone
      )
    else
      puts "Error when sending SMS: #{response_hash["responseMessage"]}"
    end
  end
end
