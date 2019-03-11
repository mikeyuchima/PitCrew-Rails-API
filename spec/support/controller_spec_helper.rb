module ControllerSpecHelper
    # generate tokens from dispatch id
    def dispatch_token_generator(dispatch_id)
      JsonWebToken.encode(dispatch_id: dispatch_id)
    end
  
    # generate expired tokens from dispatch id
    def dispatch_expired_token_generator(dispatch_id)
      JsonWebToken.encode({ dispatch_id: dispatch_id }, (Time.now.to_i - 10))
    end

    # generate tokens from technician id
    def technician_token_generator(technician_id)
      JsonWebToken.encode(technician_id: technician_id)
    end
  
    # generate expired tokens from technician id
    def technician_expired_token_generator(technician_id)
      JsonWebToken.encode({ technician_id: technician_id }, (Time.now.to_i - 10))
    end
  
    # return valid headers
    def valid_headers
      {
        "Authorization" => token_generator(user.id),
        "Content-Type" => "application/json"
      }
    end
  
    # return invalid headers
    def invalid_headers
      {
        "Authorization" => nil,
        "Content-Type" => "application/json"
      }
    end
  end