# frozen_string_literal: true

def json_response
  @json_response ||= JSON.parse(response.body)
end
