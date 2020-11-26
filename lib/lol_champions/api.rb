class LolChampions::API


    def self.get_champions
        response = HTTParty.get("http://ddragon.leagueoflegends.com/cdn/10.24.1/data/en_US/champion.json", {headers: {"Authorization" => "Bearer #{ENV['RIOT_API_KEY']}"} })
    end
end