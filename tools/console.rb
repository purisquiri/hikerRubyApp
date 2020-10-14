require_relative '../config/environment.rb'
require 'pry'

# create test data/variables here
jake = Hiker.new("jake", "user@mail.com")
south_mountain = Trail.new("South Mountain", 5)
some_trail = Trail.new("Some Trail", 10)
yet_another_trail = Trail.new("YAT", 15)
TrailHiked.new(jake, south_mountain)
az = Park.new("AZ State Park", "AZ")
ParkTrails.new(some_trail, az)
ParkTrails.new(yet_another_trail, az)

mauro = Hiker.new("mauro", "mail@mail.com")
TrailHiked.new(mauro, south_mountain)
pt = ParkTrails.new(south_mountain, az)
arr = az.all_trails

binding.pry

0