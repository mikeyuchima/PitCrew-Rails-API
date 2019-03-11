# frozen_string_literal: true

def json
  @json ||= JSON.parse(response.body)
end
