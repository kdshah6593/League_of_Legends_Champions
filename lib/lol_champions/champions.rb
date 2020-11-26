class LolChampions::Champions

    attr_accessor :name, :type, :stats

    @@all = []

    def initialize()
        
        self.all << self
    end

    def self.all
        @@all
    end


end