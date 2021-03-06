class LolChampions::API


    def self.get_champions
        response = HTTParty.get("http://ddragon.leagueoflegends.com/cdn/10.24.1/data/en_US/champion.json")
        champions_hash = response["data"]

        LolChampions::Champion.create_from_collection(champions_hash)
    end
end



# response["data"] #=> pulls up Keys/values of all the Champions
# response["data"]["Champion.Name.Key"] #=> pulls up key/value pairs with relevant information