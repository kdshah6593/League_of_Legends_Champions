class LolChampions::CLI 

    def initialize
        champions = LolChampions::API.get_champions
        champions
    end

    def call
        puts ""
        puts "Hello Summoner, welcome to the League of Legends Champion Finder!"
        puts "Note: Type 'menu' to return to the Main Menu or 'exit' to exit the program"
        puts ""
        main_menu
        another_one?
    end

    def main_menu
        puts "Main Menu"
        puts "1. See full list of the Champions"
        puts "2. Find Champions by Difficulty Level"
        puts "3. Find Champions by Type"
        puts ""
        print "How would you like to find a champion? Select a number from the options above: "
        user_input = gets.chomp

        case user_input
        when "1"
            puts ""
            print_all_champions
            ask_specific_champion
            user_input2 = gets.chomp.to_i
            print_champion(user_input2)
        when "2"
            difficulty_menu
        when "3"
            type_menu
        when "menu"
            puts ""
            puts "You are already at the Main Menu!"
            puts ""
            main_menu
        when "exit"
            cya_later
            exit
        else
            invalid_input
            puts ""
            main_menu
        end
    end

    def difficulty_menu
        puts ""
        print "Which champions based on difficulty to play would you like too see? Easy, Medium, or Hard? "
        user_input = gets.chomp.downcase

        if user_input == "easy" || user_input == "medium" || user_input == "hard"
            puts ""
            print_difficulty_champions(user_input)
        elsif user_input == "menu"
            main_menu
        elsif user_input == "exit"
            cya_later
            exit
        else
            invalid_input
            difficulty_menu
        end

        ask_specific_champion
        user_input2 = gets.chomp.to_i
        print_champion_difficulty(user_input, user_input2)
    end

    def type_menu
        puts ""
        puts "Champion types are Fighter, Tank, Mage, Assassin, Marksman, or Support"
        print "Which champions based on type would you like too see? "
        user_input = gets.chomp.downcase.capitalize

        if user_input == "Fighter" || user_input == "Tank" || user_input == "Mage" || user_input == "Assassin" || user_input == "Marksman" || user_input == "Support"
            puts ""
            print_type_champions(user_input)
        elsif user_input == "Menu"
            main_menu
        elsif user_input == "Exit"
            cya_later
            exit
        else
            invalid_input
            type_menu
        end

        ask_specific_champion
        user_input2 = gets.chomp.to_i
        print_champion_type(user_input, user_input2)
    end
    
    def print_all_champions
        LolChampions::Champion.all.each.with_index(1) do |champion, index|
            puts "#{index}. #{champion.name}"
        end
    end

    def print_type_champions(user_input)
        champions = LolChampions::Champion.find_by_type(user_input)
        champions.each.with_index(1) do |champion, index|
            puts "#{index}. #{champion.name}"
        end
    end

    def print_difficulty_champions(user_input)
        champions = LolChampions::Champion.find_by_difficulty(user_input)
        champions.each.with_index(1) do |champion, index|
            puts "#{index}. #{champion.name} - #{champion.info["difficulty"]}"
        end
    end

    def ask_specific_champion
        print "Enter the number of the specific champion you would like to know more about: "
    end

    def another_one?
        puts "Would you like to learn about another champion? yes or no"
        user_input = gets.chomp.downcase
        if user_input == "yes"
            puts ""
            call
        elsif user_input == "no"
            cya_later
            exit
        else
            invalid_input
            puts ""
            another_one?
        end
    end

    def invalid_input
        puts ""
        puts "You have made an invalid selection, please try again"
    end

    def cya_later
        puts "See you on the Rift. Bye!"
    end

    def list_champions
        LolChampions::Champion.all
    end

    def list_champions_difficulty(difficulty)
        champions = LolChampions::Champion.find_by_difficulty(difficulty)
    end

    def list_champions_type(type)
        LolChampions::Champion.find_by_type(type)
    end

    def print_champion(number)
        champion = list_champions[number - 1]
        champion_print_out(champion)
    end

    def print_champion_difficulty(difficulty, number)
        champion = list_champions_difficulty(difficulty)[number - 1]
        champion_print_out(champion)
    end

    def print_champion_type(champ_type, number)
        champion = list_champions_type(champ_type)[number - 1]
        champion_print_out(champion)
    end

    def champion_print_out(champion)
        puts ""
        puts "---------------------------------------------"
        puts "Name: #{champion.name}"
        puts "Title: #{champion.title}"
        puts "Champion Type(s): #{champion.tags}"
        puts "Damage Type: #{champion.damage_type}"
        puts "Base Stats: "
        puts "            HP: #{champion.stats["hp"]}"
        puts "            Move Speed: #{champion.stats["movespeed"]}"
        puts "            Armor: #{champion.stats["armor"]}"
        puts "            Magic Resistance: #{champion.stats["spellblock"]}"
        puts "            Attack Range: #{champion.stats["attackrange"]} "
        puts "            Crit%: #{champion.stats["crit"]}"
        puts "            Attack Damage: #{champion.stats["attackdamage"]}"
        puts "            Attack Speed: #{champion.stats["attackspeed"]}"
        puts "---------------------------------------------"
        puts ""
    end
end



# ------- OLD CODE THAT HAS BEEN REFACTORED ABOVE -------
# This is for #main_menu method
    # if user_input.to_i == 1
    #     puts ""
    #     print_all_champions
    #     ask_specific_champion
    #     user_input2 = gets.chomp.to_i
    #     print_champion(user_input2)
    # elsif user_input.to_i == 2
    #     difficulty_menu
    # elsif user_input.to_i == 3
    #     type_menu
    # elsif user_input == 'menu'
    #     puts ""
    #     puts "You are already at the Main Menu!"
    #     puts ""
    #     main_menu
    # elsif user_input == 'exit'
    #     cya_later
    #     exit
    # else
    #     invalid_input
    #     puts ""
    #     main_menu
    # end