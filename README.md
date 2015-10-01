# OmniAuth Pinterest

This gem contains the [OmniAuth](https://github.com/intridea/omniauth/) strategy for authenticating to [Pinterest](https://www.pinterest.com/).

## Preparation

1. Register and sign into the [Pinterest developer center](https://developers.pinterest.com/)
2. Create an [application](https://developers.pinterest.com/apps/) and note the **App ID** and the **App secret**
3. Make sure that you have already installed [OmniAuth](https://github.com/intridea/omniauth/wiki) into your application. Otherwise check out the [installation details](https://github.com/intridea/omniauth) and the [documentation](https://github.com/intridea/omniauth/wiki).

## Installation

Add this gem to your application's ```Gemfile```:

```ruby
gem 'omniauth-pinterest'
```

Execute the ```bundle``` command to install the gem.

Next, tell OmniAuth about the Pinterest provider. For a Ruby on Rails application, your ```config/initializers/omniauth.rb``` file should look like:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :pinterest, ENV['PINTEREST_APP_ID'], ENV['PINTEREST_APP_SECRET']
end
```

After restarting your application, point the authenticating user to ```/auth/pinterest```, the rest will be handled by OmniAuth.

## Authentication hash

Here's an example authentication hash available in ```request.env['omniauth.auth']```:

```ruby
{
  :provider => 'pinterest',
  :uid => '1234',
  :info => {
    :id => "1234",
    :url => "https://www.pinterest.com/jane_doe/",
    :first_name: "Jane"
    :last_name => "Doe"
  }
}
```

## License

(The MIT License)

Copyright (c) 2015 Jonathan Markwell, endil GmbH and Intridea, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
