class Park
    attr_reader :name, :location

    # @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        # @@all << self
    end

    # def self.all # all parks created
    #     @@all
    # end

    def all_trails
        # find all trails in this park
        ParkTrails.all.select do |pt|
            pt.park == self
        end.collect do |this_park|
            this_park.trail.name
        end
    end
end