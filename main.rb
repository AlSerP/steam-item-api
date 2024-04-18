require_relative 'api'

# item = 'StatTrak™ M4A1-S | Hyper Beast (Minimal Wear)'
# item = 'Африканская'
item = 'Safari Mesh'

request = API::ItemSearch::Request.new(item)
response = request.send

puts "RESULT HASH #{response.search_result_hash}"

result_hash = response.search_result_hash

if result_hash
  request = API::ItemPrice::Request.new(result_hash)
  response = request.send

  # puts "RESPONSE IS #{response.inspect}"
  puts "PRICE IS #{response.median_price}"
end
