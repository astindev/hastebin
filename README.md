# hastebin

CLI tool that uploads text to hasteb.in . (Basically a Gem version of [haste-client](https://github.com/seejohnrun/haste-client))

## Installation

To install this package using GEM, run:
`gem install hastebin`

## Usage

### Write via the Shell
```sh
$ hastebin --write "puts("hello")"

```            
### Upload Files via the Shell
```sh
$ hastebin --upload "./text.txt"

```
### Download Files via the Shell
```sh
$ hastebin --download "wihuwavi"

```
### Run Ruby Files via the Shell
```sh
$ hastebin --run "wihuwavi"

```
### Read Files via the Shell
```sh
$ hastebin --read "wihuwavi"

```
### Via the Ruby API

```ruby
require 'hastebin'

# Write and Send
puts Hastebin.write("puts('Written with Hastebin CLI Ruby')") # return key

# Send Files
puts Hastebin.sendFile("./file.rb") # return key

# Read Files via hasteb.in
#                        key
puts Hastebin.readRaw('wihuwavi') # return raw

# Run Ruby File via hasteb.in
#                key
Hastebin.run('wihuwavi')

# Download File via hasteb.in
Hastebin.download('wihuwavi')

# Custom server
Hastebin.base_url = 'https://hastebin.com/'

puts Hastebin.base_url # https://hasteb.in/

puts Hastebin.domain # hasteb.in

puts Hastebin.ping # 450

```

## License

This module is licensed under the MIT license.
