class API
    def self.load_location
        resp_location = RestClient.get("https://rickandmortyapi.com/api/location")
        location_hash  = JSON.parse(resp_location.body, symbolize_names: true)
        location_array = location_hash[:results]

        
        location = location_array.collect do | locale |
            # name = locale[:name]
            # url = locale[:url]
            # residents = locale[:residents]
            Location.new(locale)
            # binding.pry
        end
        
    end
    
    def self.load_characters(url)
        resp_character = RestClient.get(url)
        character_hash = JSON.parse(resp_character.body, symbolize_names: true)
        character_array = character_hash[:name]
    binding.pry
     character = character_array.collect do | char |
        # name = locale[:name]
        # url = locale[:url]
        # residents = locale[:residents]
        Character.new(char)
        end
    end

    def self.load_location_details(new_location)
        resp = RestClient.get(new_location.url)
        new_location_hash = JSON.parse(resp.body, symbolize_names: true)
        new_location_name = new_location_hash[:name]
        # binding.pry

    end
# binding.pry

end


# https://rickandmortyapi.com/api/location/id
# https://rickandmortyapi.com/api/character/id