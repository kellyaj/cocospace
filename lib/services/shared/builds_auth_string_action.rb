module Services::Shared
  class BuildsAuthStringAction
    extend LightService::Action
    expects :auth_user, :auth_password
    promises :encoded_auth_string

    executed do |context|
      context.encoded_auth_string = encode_auth_string(context.auth_user, context.auth_password)
    end

    private

    def self.encode_auth_string(auth_user, auth_password)
      Base64.encode64("#{auth_user}:#{auth_password}")
    end
  end
end
