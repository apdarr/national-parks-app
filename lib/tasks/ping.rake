require 'net/http'


desc "This pings the Heroku app's URL"
task :ping do
  puts "Making an attempt to ping the web dyno"

  if ENV['URL']
    puts "Sending ping..."

    uri = URI(ENV['URL'])
    NET::HTTP.get_response(uri)

    puts "success..."
  end
end
