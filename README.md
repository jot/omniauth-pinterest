NOTE: Unfortunately the API this library was created for never really existed. It was built against some API documentation that I think they accidentally released for about a week.

# OmniAuth Pinterest

This is the unofficial OmniAuth strategy for authenticating to Pinterest. To
use it, you'll need to sign up for an OAuth2 Application ID and Secret
on the [Pinterest Developer website](http://pinterest.com/developers/api).

## Basic Usage

    use OmniAuth::Builder do
      provider :pinterest, ENV['PINTEREST_ID'], ENV['PINTEREST_SECRET']
    end

## License

Copyright (c) 2012 Jonathan Markwell and Intridea, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
