class CLI
   
    def cat_facts
       
        puts ""
        puts "welcome to cats facts"
        puts "***************"
        puts ""
        puts "Write a fact about your cat or 'exit' to exit."
        puts ""
        API.get_cats
        @facts= gets.strip.downcase
        


        def end_program 
            puts "Hey, see you later!"
        end


    end 
end