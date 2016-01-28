require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Pinterest < OmniAuth::Strategies::OAuth2
      option :client_options, {
        :site => 'https://api.pinterest.com/',
        :authorize_url => 'https://api.pinterest.com/oauth/',
        :token_url => 'https://api.pinterest.com/v1/oauth/token'
      }

      def request_phase
        options[:scope] ||= 'read_public'
        options[:response_type] ||= 'code'
        super
      end

      uid { raw_info['id'] }

      info { raw_info }
      
      def authorize_params
        super.tap do |params|
          %w[redirect_uri].each do |v| 
            params[:redirect_uri] = request.params[v] if request.params[v]
          end 
        end 
      end 

      def raw_info
        @raw_info ||= access_token.get('/v1/me/').parsed['data']
      end

    end
  end
end
