class LolChampions::CLI 

    def initialize
        champions = LolChampions::API.get_champions
        champions
    end

    def call
        puts "Hello Summoner, welcome to the League of Legends Champion Finder!"
        main_menu
    end

    def main_menu
        # Provide Initial Menu Options
        puts "1. All the Champions"
        puts "2. Champions by Difficulty Level"
        puts "3. Champions by Type"
        puts "How would you like to find a champion? Select from the options below: 1, 2, 3, or exit?"
        # Get User Choice
        user_input = gets.chomp
        # Based on User Choice, run the next method
        # Possibly change this to a While Loop with Case Statements
        if user_input.to_i == 1
            #run method to show list of all the champions
        elsif user_input.to_i == 2
            difficulty_menu #run method to show a new menu of difficulty levels
        elsif user_input.to_i == 3
            type_menu #run method to show a new menu of types
        elsif user_input == 'exit'
            exit
        else
            puts "You have made an invalid selection, please try again"
            main_menu
        end
    end

    def difficulty_menu
        puts "Which champions based on difficulty to play would you like too see? Easy, Medium, or Hard?" #easy will be 1-4, medium 5-7, hard 8-10
        puts "Type menu to return to the main menu or exit to exit the program"
        user_input = gets.chomp.downcase

        if user_input == "easy"
            #run method to show list of easy champions
        elsif user_input == "medium"
            #run method to show list of medium champions
        elsif user_input == "hard"
            #run method to show list of hard champions
        elsif user_input == "menu"
            main_menu
        elsif user_input == "exit"
            exit
        else
            puts "You have made an invalid selection, please try again"
            difficulty_menu
        end
    end

    def type_menu
        puts "Which champions based on type would you like too see?"
        puts "Champion types are Fighter, Tank, Mage, Assassin, Marksman, or Support" #Fighter Tank Mage Assassin Marksman Support
        puts "Type menu to return to the main menu or exit to exit the program"
        user_input = gets.chomp.downcase

        if user_input == "fighter"
            #run method to show list of champions with fighter tag
        elsif user_input == "tank"
            #run method to show list of champions with tank tag
        elsif user_input == "mage"
            #run method to show list of champions with mage tag
        elsif user_input == "assassin"
            #run method to show list of champions with assassin tag
        elsif user_input == "marksman"
            #run method to show list of champions with marksman tag
        elsif user_input == "support"
            #run method to show list of champions with support tag
        elsif user_input == "menu"
            main_menu
        elsif user_input == "exit"
            exit
        else
            puts "You have made an invalid selection, please try again"
            type_menu
        end
    end



    def print_all_champions
        #pull from champion class, sort by name
        #iterate through with index
    end

    #The below methods need to pull from Champion class based on deeper dive into attributes
    #Need to incorporate methods in Champion class that find by those attributes

    def print_difficulty_easy_champions
        #pull from champion class, sort by name
        #iterate through with index
    end

    def print_difficulty_med_champions
        #pull from champion class, sort by name
        #iterate through with index
    end

    def print_difficulty_hard_champions
        #pull from champion class, sort by name
        #iterate through with index
    end


    def print_fighter_type_champions
        #pull from champion class, sort by name
        #iterate through with index
    end

    def print_tank_type_champions
        #pull from champion class, sort by name
        #iterate through with index
    end

    def print_mage_type_champions
        #pull from champion class, sort by name
        #iterate through with index
    end

    def print_assassin_type_champions
        #pull from champion class, sort by name
        #iterate through with index
    end

    def print_marksman_type_champions
        #pull from champion class, sort by name
        #iterate through with index
    end

    def print_support_type_champions
        #pull from champion class, sort by name
        #iterate through with index
    end

end