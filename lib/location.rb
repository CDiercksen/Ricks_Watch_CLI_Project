class Location

    attr_accessor :name, :url, :residents

    @@all = []

    def initialize(locale)
        @name = locale[:name]
        @url = locale[:url]
        @residents = locale[:residents]
        @@all << self
        # binding.pry
    end

    def self.all
        @@all
    end
end