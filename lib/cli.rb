class CLI 
    @@jump_counter = 1
    @@help_counter = 1
    @@character_selection = []
    @@first_location_selection = []




    def run
        # User logs in to Ricks Watch
        # Greet User
        # #Initialize - 
        # #Pull list of locations from Rick And Morty API
        API.load_location
        # #present user list of locations
        list_locations
        # #prompt user to input location ID
        opening_menu
        puts "DNA Match: Not Found. Initializing Wormhole.".light_red.bold
        wormhole
        # display_location_details
        first_jump
        wormhole
        good_job
    end
    
    def list_locations
        puts "Greetings, Rick Sanchez, where would you like to go?".light_cyan.bold
        #call our Location level all variable and loop through to list the locations
        Location.all.each.with_index(1) do | locale, i |
            puts "#{i}. #{locale.name}".light_cyan
        end
    end
    
    def opening_menu
        puts "Please select a number to travel to that location".light_cyan.bold
        input = gets.chomp
        if !input.to_i.between?(1, Location.all.count)
            puts "Ha, you're hilarious."
            list_locations
            opening_menu
        else
            @@first_location_selection = Location.all[input.to_i-1]
        end
    end

    def wormhole
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
    end

    
    def first_jump
        puts "Wormhole sequence complete. Congratulations: you are alive.".light_cyan.bold
        puts "Run: NOT RICK PROTOCOLS".red.bold
        puts "Please input a number. Would you like to:".light_cyan.bold
        puts "[1] - Call Rick".light_cyan
        puts "[2] - Find local residents".light_cyan
        input = gets.chomp
        if !input.to_i.between?(1, 2)
            puts "Ha, you're hilarious.".red.bold
            first_jump
        elsif input.to_i == 1
            @@help_counter -= 1
            puts "<burp>Oh crap, I told you never to <belch> touch my watch.".yellow
            puts "That's a precious family heirloom I made last week.".yellow
            puts "Looks like you're in #{@@first_location_selection.name}.".yellow
            puts "Ask around, I'm sure someone will get you back home #{"<sniff>".light_green}.".yellow
            puts "And if they d-<BURP>-on't just remind them I'll turn their bodies into microscopic dog food for my pet Hepatitis.".yellow
            puts "Oh but choose carefully, the watch only has enough b-<burp>attery for #{@@jump_counter} more jump.".yellow
            first_jump
        elsif input.to_i == 2 && @@jump_counter < 1
            puts "zzzzzzz".magenta
        elsif input.to_i == 2 && @@help_counter > 0
            puts "No one is willing to talk to you".red.bold
            first_jump
        else input.to_i == 2 && @@help_counter < 1
            list_characters
            first_jump_menu
        end
    end

    def gameover
        puts "Emergency Protocols Activated. Select your fate:".red.bold
        puts "[1] Activate Time Machine".red
        puts "[2] Accept your fate".red
        input = gets.chomp
        if !input.to_i.between?(1, 2)
            puts "Incompetence Detected. Initialize self-destruct".red.bold
            exit!
        elsif input.to_i == 1
           puts "In-App purchase: Time Machine - Not Found.".red.bold
           gameover
        else
            puts "<plays Incredible Hulk ending theme music 'Lonely Man'".green
            exit!
        end
    end

    def list_characters
        if @@first_location_selection.residents.empty?
            puts "No one is here. You will die of thirst in 5 days.".light_cyan.bold
            gameover
        else
        puts "Please input the number of the resident you would like to speak to".light_cyan.bold
        @@first_location_selection.residents.each do | url |
            API.load_characters(url)
            Character.all.each.with_index(1) do | person, i |
                puts "#{i}. #{person.name}"
            end
        end
    end

    def first_jump_menu
        input = gets.chomp
        if !input.to_i.between?(1, Character.all.count)
            puts "Ha, you're hilarious.".red
            puts "Please input the number of the resident you would like to speak to"
            Character.all.each.with_index(1) do | person, i |
                puts "#{i}. #{person.name}".light_cyan
            end
            first_jump_menu
        else
            @@character_selection << Character.all[input.to_i-1]
            puts "Warping to home thanks to #{@@character_selection[0].name}.".red.bold
        end
    end

    def good_job
        puts "Congratulations: you are back in Rick's Garage.".light_cyan.bold
        Character.clear
        Location.clear
        exit!
     end
    end

end






# #Randomize location ID (.sample)

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