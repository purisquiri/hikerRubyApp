class TrailHiked
 
    attr_reader :hiker, :trail
    attr_accessor :review, :hike_distance

    @@all = []

    def initialize(hiker, trail)
        @hiker = hiker
        @trail = trail
        @review = nil
        @hike_distance = trail.distance #is calling the distance method(reader) from the trail class
        @@all << self
    end

    def self.all
        @@all
    end
end