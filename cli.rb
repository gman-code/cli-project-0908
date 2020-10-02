class CLI
   
    def breed
        puts ""
        puts "welcome to cats facts"
        puts "***************"
        puts ""
        puts "Enter a fact about your cat or 'exit' to exit."
        puts ""
        API.get_breed
        @breed= gets.strip.downcase
        print_breed
        prompt
        input = gets.strip.downcase 
        while input != 'exit' do
            if input == 'origin'   

            elsif input.to_i > 0 && input.t_i <= Cat.find_by_origin(@origin).length    
                cat = Cat.find_by_origin(@origin)[inputs.to_i-1]    
                API.get_breed 

            end
        end
    end 

    def prompt  
        puts ""
        puts "Enter a number about your cat or 'exit' to exit."
        puts ""
    end 

    def print_breed 
        Cat.find_by_origin(@origin).each.with_index(1) do |c, i|
            puts "#{i}. #{c.name}"
        end
    end 
end 
