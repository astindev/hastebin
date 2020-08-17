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
$ hastebin -c "puts("hello")"
  hastebin -r "./text.txt"

```

### Via the Ruby API

```ruby
require 'hastebin'

puts Hastebin.code("puts('test')") # return key
```

## License

This module is licensed under the MIT license.
