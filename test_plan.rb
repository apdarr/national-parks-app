require 'ruby-jmeter'
# Targeting seperate Heroku app

test do
    threads count: 2 do
      #transaction 'vist_home_page' do

      #visit name: "Parks", url: "https://national-parks-app-prod.herokuapp.com/" do
      #  visit name: "Parks/New", url: "https://national-parks-app-prod.herokuapp.com/parks/new" do
      #    extract regex: "content='(.+?)' name='csrf-token'", name: 'csrf-token'
      #  end
      get name: "Parks/New", url: "https://national-parks-app-prod.herokuapp.com/parks/new"

      submit name: "adding Parks", url: "https://national-parks-app-prod.herokuapp.com/parks",
        fill_in: {
          'utf8' => '%E2%9C%93',
          'authenticity_token' => '${csrf-token}',
          'park[name]' => 'Yellowstone',
          'park[journal]' => 'Sunny, warm',
          'commit' => 'Create Park'
        } do
          extract regex: "content='(.+?)' name='csrf-token'", name: 'csrf-token'
      end
    end
end.run(path:'/app/vendor/apache-jmeter/apache-jmeter-3.1/bin/')
