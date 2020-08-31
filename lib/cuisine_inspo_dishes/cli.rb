#Our CLI Controller

class CuisineInspoDishes::Cli


    def call
        puts " " 
        puts "                  Hi, and welcome to the Cuisine Inspo Dishes cli"
        list_cuisines
        puts " "
        puts "      1. Enter a cuisine style to get some inspirational dishes."
        puts "      2. Type cuisine to see the list of cuisines or type Exit."

        while @input != "Exit" 
        get_user_input
        validate(@input)       
        end
        #goodbye
    end


    def get_user_input 
        @input = gets.strip
    end

    def list_cuisines
        puts "            Here is a list of different cuisines from around the world:"
        CuisineInspoDishes::Cuisine.show_cuisines();       
    end

    def list_dishes(cuisine)
         CuisineInspoDishes::API.get_dishes(cuisine);  
    end 

    def validate(cuisine)
        is_validated = CuisineInspoDishes::Cuisine.validate_cuisine(cuisine);
        if cuisine != "Exit" && cuisine != "cuisine" && is_validated == true
           
        dishes_response = CuisineInspoDishes::API.new(cuisine)
        dishes = dishes_response.get_dishes()
            
        dishes_array = CuisineInspoDishes::Dishes.new_dishes_collection(dishes)
        puts dishes_array
         
        elsif cuisine == "Exit"
            puts "                                  Get Coocking!!!"
    
        elsif cuisine == "cuisine"
                list_cuisines
            puts "            Enter a cuisine style to get some inspiration dishes or type Exit"
    
            
        else
            puts "            Sorry! Cuisine not supported. Type cuisine to see the list of supported cuisines again or type Exit."
        end
    end


end