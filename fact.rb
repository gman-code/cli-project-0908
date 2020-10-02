class Fact
    attr_accessor :name, :cats_id, :origin, :fact
    @@all =[]
    
    def initialize(name: nil, cats_id: nil, origin: nil, fact: nil)
        @name = name
        @cats_id = cats_id
        @origin = origin
        @fact = fact
        @@all << self


    end 
    def self.all
        @@all
    end
    def self.find_by_fact(fact)
        self.all.select{|c| c.fact == fact}
    end
end
