class Character 

    attr_accessor :name, :url #:origin_name, :origin_url

    @@all = []
    

    def initialize(char)
        @name = char[:name]
        @url = char[:url]
        @origin_name = char[:origin][:name]#need to access value of nested key :name within :origin
        @origin_url = char[:origin][:url]#need to access value of nested key :url within :origin
        @@all << self
    end

    def self.all
        @@all
    end


end