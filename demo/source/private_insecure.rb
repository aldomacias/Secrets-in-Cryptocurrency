require 'kraken_ruby_client'
conf.echo = false
client = Kraken::Client.new(api_key: 'zrSoxnUbKYl1ohQofIDI5NFVwF8IHYVQ2Y+73eQs+un/yeLaDP/oJRpe', api_secret: 'QhgwdGeej1I3XSGwA6cao98WqBLmxTzi5kAfLKuggaxLdCg66s+TERBGaZEhGshp/thbJB1ckljyDS8rnBdgjg==')
closed_orders = client.closed_orders.dig('result', 'closed') # All closed orders
closed_orders.first # Show the most recent closed order


closed_orders.first(5).each { |order| puts "#{order[0]} - #{order[1].dig('descr', 'order')}" }

