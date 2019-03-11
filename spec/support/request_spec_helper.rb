module RequestSpecHelper
    # Parse JSON response to ruby hash
    def json
      @json_response ||= begin
        result = JSON.parse(response.body)
        result.is_a?(Hash) ? result.with_indifferent_access : result
    end
  end
end