require "uri"
require "net/http"
require "json"

module Hastebin

def self.code(code)
    url = URI("https://hasteb.in/documents")

    https = Net::HTTP.new(url.host, url.port);
      https.use_ssl = true

    request = Net::HTTP::Post.new(url)
      request.body = code

$res = https.request(request)

return JSON.parse($res.read_body)['key']
end

def self.sendFile(path)
    
    file = File.open(path)
    data = []
    file.each do |line|
    data.push(line)
    $text = data.join("")
    end
return code($text)
end

def self.readRaw(key)
    
https = Net::HTTP.new('hasteb.in', 443)

https.use_ssl = true

res = https.get("/raw/#{key}")


return res.body
end

def self.run(key)
    
    https = Net::HTTP.new('hasteb.in', 443)
    
    https.use_ssl = true
    
    res = https.get("/raw/#{key}")
    
    File.open("#{key}.rb", 'w') do |line|
        line.puts(res.body)
    end
    
        require("./#{key}")
  
    require("./#{key}")
    File.delete("./#{key}.rb")
    end

    def self.download(key)
    
        https = Net::HTTP.new('hasteb.in', 443)
        
        https.use_ssl = true
        
        res = https.get("/raw/#{key}")
        
        File.open("#{key}", 'w') do |line|
            line.puts(res.body)
        end
        
        end
end
