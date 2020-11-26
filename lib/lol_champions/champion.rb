class LolChampions::Champion

    attr_accessor :name, :info, :tags, :stats
    #name value is a String, info value is a hash, tags value is an array, stats value is a hash

    @@all = []

    def initialize(name=nil, info=nil, tags=nil, stats=nil)
        @name = name
        @info = info
        @tags = tags
        @stats = stats
        save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    # response["data"]["Champion.Name.Key"] #=> pulls up key/value pairs with relevant information
    # This method instantiantes new champions based on a collection passed to it; this will be used in the api method
    def self.create_from_collection(collection_hash)
        collection_hash.each do |k, v|
            champion = self.new
            v.each do |key, value|
                if key == "name"
                    champion.name = value
                elsif key == "info"
                    champion.info = value
                elsif key == "tags"
                    champion.tags = value
                elsif key == "stats"
                    champion.stats = value
                end
            end
        end
    end

    # This method finds all champions with the difficulty level of easy med hard; use if statements to pool easy as 1-4, med as 5-7, hard as 8-10
    def self.find_by_difficulty(level)
        # self.all.select {|song| song.name == name}
    end
    #This method finds all champions by a tag; the tag value is an array, so maybe use include? on this value to check those champions with multiple types
    def self.find_by_type(type)
        #self.all.select {|song| song.name == name}
    end


end