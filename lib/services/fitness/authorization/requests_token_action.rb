module Services::Fitness::Authorization
  class RequestsTokenAction
    extend LightService::Action
    expects :token_url, :token_request_body, :encoded_auth_string
    promises :response

    executed do |context|
      request_options = {
        :headers => {
          "Authorization" => "Basic #{context.encoded_auth_string}"
        },
        :body => context.token_request_body
      }

      context.response = HTTParty.post(context.token_url, request_options)
    end
  end
end
