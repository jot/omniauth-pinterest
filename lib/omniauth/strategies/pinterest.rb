require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Pinterest < OmniAuth::Strategies::OAuth2
      option :client_options, {
        :site => 'https://api.pinterest.com/',
        :authorize_url => 'https://api.pinterest.com/oauth/',
        :token_url => 'https://api.pinterest.com/v1/oauth/token',
        :auth_scheme => 'request_body'
      }
      
      option :auth_token_params, {
        :mode => :query,
        :param_name => :access_token
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
        fields = 'first_name,id,last_name,url,account_type,username,bio,image'
        @raw_info ||= access_token.get("/v1/me/?fields=#{fields}").parsed['data']
      end

      def ssl?
        true
      end

    end
  end
end
