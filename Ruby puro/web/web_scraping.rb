require 'nokogiri'
require 'net/http'

https = Net::HTTP.new('example.com', 443)
# para fazer chamadas https
https.use_ssl = true

response = https.get("/")

doc = Nokogiri::HTML(response.body)


doc.search('div h1','div p','a').each do |element|
  puts element.content
  puts element['href']
  puts ''
end


