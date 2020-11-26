I will need 3 classes
1. CLI
2. Champion
3. API/Scraper

#--STEPS for CLI Interface--#
1. User will start program

2. It will greet the user with LOL Champion Finder

3. It will ask whether you want to see a list of all champions, find champions by difficulty playing level or find champions by type

4. User will input a number based on selection

5a. If all champions -> display a list of all the champions --> user input for a specific champion --> display that champions attributes
5b. If difficulty --> display more options to choose which difficulty level (easy, medium, hard) --> user input --> displays all champions with that difficulty --> user input for a specific champion --> display that champions attributes
5c. If type --> display list of champion types based on data from the champion objects --> user input --> displays all champions with that type --> user input for a specific champion --> display that champions attributes

6. Should be able to give option to return to main menu (step 3)
7. Should be able to give option to exit from program

#--CLI--#
Will have methods for creating these different list types for the user based on the Champion class

#--Champion--#
Build out the Champion class that will hold all the instances of the champions that are brought in from the API

attr_accessors for name, type(s), difficulty, basic stats, magic/mixed/physical, etc

#--API--#
url/json file: http://ddragon.leagueoflegends.com/cdn/10.24.1/data/en_US/item.json
main url: https://developer.riotgames.com/docs/lol#data-dragon_items

need to parse through the file and create new instances of the Champion class