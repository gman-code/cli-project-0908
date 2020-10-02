class API

    def self.get_cat
        url="https://api.thecatapi.com/v1/breeds"
        uri=URI(url)
        response=Net::HTTP.get(uri)

        cat=JSON.parse(response)
        cat.each do |c|
           Cat.new(name: c["name"], temperament:  c["temperament"], origin: c["origin"], description: c["description"] ) if c["name"] != ""
        # use cats info to make a Fact for each type of cat
        end
    end 
    
end
