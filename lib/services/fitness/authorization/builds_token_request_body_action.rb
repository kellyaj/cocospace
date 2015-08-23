module Services::Fitness::Authorization
  class BuildsTokenRequestBodyAction
    extend LightService::Action
    expects :code, :grant_type, :client_id, :redirect_uri
    promises :token_request_body

    executed do |context|
      context.token_request_body = {
        :code         => context.code,
        :grant_type   => context.grant_type,
        :client_id    => context.client_id,
        :redirect_uri => context.redirect_uri
      }.to_param
    end
  end
end
