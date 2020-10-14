class ParkTrails
    @@all = []

    attr_reader :trail, :park
    
    def initialize(trail, park)
        @trail = trail
        @park = park
        @@all << self
    end

    def self.total_trails # gives total trails in all parks
        self.all.count
    end

    def self.all
        @@all
    end
end