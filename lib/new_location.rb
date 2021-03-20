class New_location

    attr_accessor :name, :url, :residents

    @@all = []

    def initialize(new_location)
        @name = new_location.name
        @url = new_location.url
        @residents = new_location.residents
        @@all << self
        # binding.pry
    end

    def self.all
        @@all
    end
end