class CLI 
    
    def run
        # User logs in to Ricks Watch
        # Greet User
        # #Initialize - 
        jump_Counter = 3
        help_Counter = 1
        API.load_location_characters
        list_locations
        opening_menu
        wormhole
        # display_location_details
        binding.pry
    end
    
    def list_locations
        puts "Greetings, Rick Sanchez, where would you like to go?"
        #call our Location level all variable and loop through to list the locations
        Location.all.each.with_index(1) do | locale, i |
            puts "#{i}. #{locale.name}"
        end
    end
    
    def opening_menu
        "Please select a number to travel to that location"
        input = gets.chomp
        if !input.to_i.between?(1, Location.all.count)
            puts "Ha, you're hilarious."
            list_locations
            opening_menu
        else
            new_location = Location.all[input.to_i-1]
            # API.load_location_details(new_location)
            new_location.name
            binding.pry
        end
    end

    def wormhole
        puts "*                                            *"
        puts "*                                            *"
        puts "*                                            *"
        puts "*                                            *"
        puts "*                                            *"
        puts "*                                            *"
        puts "*                                            *"
        puts "*                                            *"
        puts "*                                            *"
        puts "*                                            *"
        puts "*                                            *"
        puts "*                                            *"
        puts "*                                            *"
        puts "*                                            *"
        puts "*                                            *"
        puts "*                                            *"
        puts "*                                            *"
        puts "*                                            *"
        puts "*                                            *"
        puts "*                                            *"
        puts "*                                            *"
        puts "*                                            *"
        puts "*                                            *"
        puts "*                                            *"
        puts "*                                            *"
        puts "*                                            *"
        puts "*        *                                   *"
        puts "*        *                                   *"
        puts "*        *                      *            *"
        puts "*        *                      *            *"
        puts "*        *                      *            *"
        puts "*        *                      *            *"
        puts "*        *                      *            *"
        puts "*   *    *                      *            *"
        puts "*   *                           *       *    *"
        puts "*   *                 *         *       *    *"
        puts "*   *                 *                 *    *"
        puts "*   *                 *                 *    *"
        puts "*         *           *                 *    *"
        puts "*         *           *       *              *"
        puts "*         *                   *              *"
        puts "*    *                        *              *"
        puts "*    *         *              *           *  *"
        puts "*    *         *              *           *  *"
        puts "*    *         *              *           *  *"
        puts "*              *                          *  *"
        puts "*              *                             *"
        puts "*                                   *        *"
        puts "*         *                         *        *"
        puts "*         *                         *        *"
        puts "*  *  *  **                      *  *  *  *  *"
        puts " *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  "
        puts "  *  *  *  *  *  *  *  *  *  *  *  *  *  *  * "
        puts " *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  "
        puts "*  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *"
        puts "*  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *"
        puts " *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  "
        puts "  *  *  *  *  *  *  *  *  *  *  *  *  *  *  * "
        puts " *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  "
        puts "*  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *"
        puts "*  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *"
        puts " *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  "
        puts "  *  *  *  *  *  *  *  *  *  *  *  *  *  *  * "
        puts " *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  "
        puts "*  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *"
        puts "*  *  *  *  *  *  *  *  *  *  *  *  *  *  *  *"
        puts " *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  "
        puts "  *  *  *  *  *  *  *  *  *  *  *  *  *  *  * "
        puts " *  *  *  *  *  *  *  *  *  *  *  *  *  *  *  "
        puts "*  *  *  *  *  *  *     *  *  *  *  *  *  *  *"
        puts "*  *  *  *  *  *           *  *  *  *  *  *  *"
        puts " *  *  *  *  *              *  *  *  *  *  *  "
        puts "  *  *  *                       *  *  *  *  * "
        puts " *  *                                *  *  *  "
        puts "*                                         *  *"
    

    def display_location_details
        API.load_location_details.new_location_name
        
    end
end


# #Pull list of locations from Rick And Morty API
# #present user list of locations
# #prompt user to input location ID

# #Randomize location ID (.sample)
# "DNA match: not found."
# #Output "wormhole effects"
# "Wormhole sequence complete. You are alive."
# Would you like to:
# [1] - Call Rick
# [2] - Get Help from the locals

# input [1]
# #If location_name == Earth
# puts "S.O.S. Rick Sanchez"
# puts "Give me my watch back and get out of the garage."
# puts "Congratulations, you successfully teleported to Earth. Come back any time."

# #Elsif Jump_Counter == 3 && location_name != Earth
# puts "S.O.S. Rick Sanchez"
# puts "<burp> oh crap, I told you never to <belch> touch my watch. That's a precious family heirloom I made last week. Looks like you're in #{location_name}. Ask around, I'm sure someone will get you back home. <sniff> and if they d-<BURP>-on't just remind them I'll turn their bodies into microscopic dog food for my pet Hepatitis. Oh but choose carefully, the watch only has enough b<burp>attery for #{jump_counter} more jumps."

# #If Jump_Counter == 2 && location_name != Earth
# puts "S.O.S. Rick Sanchez"
# puts "Damnit, what were you doing asking #{Helper_1} for help? You're where? #{location_name}? I think I left a stash of twinkies there under a rock somewhere. Bring those back for m<BEEEELCH>e I cherish them. I cherish those... twinkies..... um.... ok well ask someone else and I'm sure they'll help. You've still got #{jump_counter} more jumps so try not to mess this one up. Bring the twinkies."

# #If Jump_Counter == 1 && location_name != Earth
# puts "S.O.S. Rick Sanchez"
# puts "Ugh, what now? #{Helper_2} is useless and probably pissed at me so I guess I'm not too surpriesed they sent you to #{location_name}. I hope you at least remembered the Twinkies. Make this one count though, you've only got #{jump_counter} chance left. uhhhh ok see you in like, five minutes probably."

# If Jump_Counter == 0 && location_name != Earth
# puts "S.O.S. Rick Sanchez"
# puts "F*ck me running. ok. alright you're stuck there for at least a day until I can <buuuurp> find time in my day to care enough to come get you and I'm already super high on this Flaxxoid strain of lemonade so it's gonna have to be after I zzzzzzzzzzz...<fart>...zzzzzzzzz"
# puts "Ricks Watch entering sleep mode for one day. Please try again tomorrow."

# Input [2]
# #If Jump_Counter == 0
# puts "zzzzz"
# #elsif Help_Counter > 0
# puts "#{character_name} ignores you."
# Help_Counter -= 1

# #else Help_Counter == 0
# puts "#{character_name} is terrified of Rick and eager to help!"
# helper_1 = #{character_name}
# Jump_Counter -=1
# #Output "wormhole effects"
# "Wormhole sequence complete. You are alive."
# Would you like to:
# [1] - Call Rick
# [2] - Get Help from the locals -->
end