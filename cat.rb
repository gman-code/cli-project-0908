class Cat
    class Cat
    attr_accessor :name,  :origin, :description, :temperament
    @@all =[]   

    
    def initialize(name: nil,  origin: nil, temperament: nil, description: nil)
        @name = name
        @origin = origin
        @temperament = temperament
        @description = description
        @@all << self 
    end

    def self.all
        @@all
    end

    def self.find_by_origin(@origin)
        self.all.select {|c| c.origin == origin} 
    end 
end
