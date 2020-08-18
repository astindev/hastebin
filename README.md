# hastebin

CLI tool that uploads text to hasteb.in . (Basically a Gem version of [haste-client](https://github.com/seejohnrun/haste-client))

## Installation

To install this package using GEM, run:
`gem install hastebin`

## Usage

### Write via the Shell
```sh
$ hastebin -c "puts("hello")"

```            
### Read Files via the Shell
```sh
$ hastebin -r "./text.txt"

```

### Via the Ruby API

```ruby
require 'hastebin'

# Write and Send
puts Hastebin.code("puts('test')") # return key

# Send Files
puts Hastebin.sendFile("./test.rb") # return key

# Read Files via hasteb.in
#                        key
puts Hastebin.readRaw('exezebip')

# Run Ruby File via hasteb.in
#                key
Hastebin.run('exezebip')

# Download File via hasteb.in
Hastebin.download('exezebip')
```

## License

This module is licensed under the MIT license.
