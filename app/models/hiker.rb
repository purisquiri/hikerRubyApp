
require 'pry'
class Hiker

    attr_reader :name, :email



    def initialize(name, email)
        @name = name
        @email = email

    end


    #binding.pry

    def total_distance
        # TrailHiked.all.select {|trail_hike| trail_hike.hiker == self  }
        TrailHiked.all.select do |trail_hike|
            trail_hike.hiker == self
        end.map do |hike|
            hike.hike_distance
        end.reduce(:+) 
    end


end
