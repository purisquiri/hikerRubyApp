class Trail

    attr_reader :name, :distance, :difficulty

    def initialize(name, distance)   #Constructor
        @name = name
        @distance = distance
        @difficulty = nil
        
    end

    def total_distance #give as the total distance hiked of a specific trail that have been created
        TrailHiked.all.select do |hiked_trail|
            hiked_trail.hike_distance
        end.map do |hiked_total|
            hiked_total.hike_distance
        end.reduce(:+)

    end

end