require 'kraken_ruby_client'
conf.echo = false
client = Kraken::Client.new(api_key: "#{ENV['API_KEY']}", api_secret: "#{ENV['API_SECRET']}")

closed_orders = client.closed_orders.dig('result', 'closed') # All closed orders
closed_orders.first # Show the most recent closed order


closed_orders.first(5).each { |order| puts "#{order[0]} - #{order[1].dig('descr', 'order')}" }

