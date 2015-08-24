module Services::Fitness::Data
  class RequestsDataAction
    extend LightService::Action
    expects :url, :authorization_header
    promises :response

    executed do |context|
      request_options = {
        :headers => {
          "Authorization" => context.authorization_header
        }
      }

      context.response = HTTParty.get(context.url, request_options)
    end
  end
end
