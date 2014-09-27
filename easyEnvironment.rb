require 'json'

config = JSON.parse( IO.read('config.json') )

# Add functions as env var that point to this 
config.each do |function|
	ENV[function.name]='ruby ' + File.expand_path(__FILE__) + ' ' + function.function
end

json.each do |i|
	puts i['isCommand']
end
