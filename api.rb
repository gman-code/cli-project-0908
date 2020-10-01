class API

    def self.get_cats
        url="https://api.thecatapi.com/v1/breeds"
        uri=URI(url)
        response=Net::HTTP.get(uri)
        cats=JSON.parse(response)["cats"].each do |a|
           Fact.new(name: a["Abyssinian"], cats_id: c["abys"], origin: c["Egypt"], fact: fact) if a["Abyssinian"] != nil
        # use cats info to make a Fact for each type of cat
        end
    end
end