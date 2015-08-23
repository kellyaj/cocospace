module Services::Fitness::Authorization
  class BuildsAuthStringAction
    extend LightService::Action
    promises :encoded_auth_string

    executed do |context|
      secret    = ENV["FITBIT_CLIENT_SECRET"]
      client_id = ENV["FITBIT_CLIENT_ID"]

      context.encoded_auth_string = encode_auth_string(client_id, secret)
    end

    private

    def self.encode_auth_string(client_id, secret)
      Base64.encode64("#{client_id}:#{secret}")
    end
  end
end
