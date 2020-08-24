## 0.2.5 / 24/08/2020
* improvements
* Changes
```diff
- puts Hastebin.code("puts('Written with Hastebin CLI Ruby')")
+ puts Hastebin.write("puts('Written with Hastebin CLI Ruby')")
```
* Add: Hastebin.base_url()
* Add: Hastebin.domain()
* Add: Hastebin.ping()
### Update Hastebin CLI
* Add: hastebin --download "key or key.rb"
* Add: hastebin --run "key or key.rb"
* Add: hastebin --read "key or key.rb"
## 0.2.1 / 18/08/2020
* Small Otimizations
* Add: Hastebin.download()
* Add: Hastebin.run()
* Add: Hastebin.sendFile()
* Add: Hastebin.readRaw()
## 0.2.0 / 17/08/2020 
* Add: Hastebin CLI
* Bugs Fix
## 0.1.0 / 17/08/2020 (beta)
* Add: Hastebin.code()
* Creation Gem