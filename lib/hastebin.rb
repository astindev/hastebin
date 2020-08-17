require "uri"
require "net/http"
require "json"

module Hastebin


def self.code(code)
url = URI("https://hasteb.in/documents")

https = Net::HTTP.new(url.host, url.port);
https.use_ssl = true

request = Net::HTTP::Post.new(url)
request["Connection"] = "keep-alive"
request["Accept"] = "application/json, text/javascript, */*; q=0.01"
request["X-Requested-With"] = "XMLHttpRequest"
request["Content-Type"] = "application/json; charset=UTF-8"
request["Origin"] = "https://hasteb.in"
request["Referer"] = "https://hasteb.in/"
request["Accept-Language"] = "pt-BR,pt;q=0.9,fr-FR;q=0.8,fr;q=0.7,en-US;q=0.6,en;q=0.5"
request.body = code

$res = https.request(request)

return JSON.parse($res.read_body)['key']
end


end
