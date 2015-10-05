require 'spec_helper'

describe OmniAuth::Strategies::Pinterest do

  context 'client options' do
    subject do
      OmniAuth::Strategies::Pinterest.new({})
    end

    it 'should have correct site' do
      subject.options.client_options.site.should eq('https://api.pinterest.com/')
    end

    it 'should have correct authorize url' do
      subject.options.client_options.authorize_url.should eq('https://api.pinterest.com/oauth/')
    end

    it 'should have correct token url' do
      subject.options.client_options.token_url.should eq('https://api.pinterest.com/v1/oauth/token')
    end
  end
end
