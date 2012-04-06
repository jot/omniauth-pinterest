require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Pinterest < OmniAuth::Strategies::OAuth2
      option :client_options, {
        :site => 'https://pinterest.com',
        :authorize_url => 'https://pinterest.com/oauth/authorize',
        :token_url => 'https://api.pinterest.com/v2/oauth/access_token'
      }

      def request_phase
        options[:scope] ||= 'read'
        options[:response_type] ||= 'code'
        super
      end

      uid { raw_info['id'] }

      info do
        {
          'nickname' => raw_info['username'],
          'name'     => raw_info['full_name'],
          'image'    => raw_info['image_url'],
        }
      end

      def raw_info
        @data ||= access_token.params["user"]
      end
    end
  end
end
