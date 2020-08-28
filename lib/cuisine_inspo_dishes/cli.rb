# Our CLI Controller
#require_relative "../lib/cuisine_inspo_dishes/api"


class CuisineInspoDishes::Cli

    def call
        puts "Hi, and welcome to the Cuisine Inspo Dishes cli"
        puts "Here is a list of diferente cuisisnes from around the world"
        list_cuisines
        menu
        error
        goodbye
        #list_dishes
    end

    def list_dishes
        CuisineInspoDishes::API.get_dishes("Italian");
    end 

    def list_cuisines
        CuisineInspoDishes::Cuisine.show_cuisines();
    end

    def menu
        input = nil
        while input != "Exit"
            puts "Enter a cuisine style to get some inspiration dishes or enter Exit"
            input = gets.strip
        case input
        when "Italian"
            list_dishes
            end until input != @@cuisines
        

           

            # when "cuisines" 
            #     list_cuisines
        end
    end

    def error
        if input != @@cuisines
            puts "Sorry! Cuisine not supported. Type cuisines to see the supported cuisines or type Exit."
        elsif "cuisines" 
            list_cuisines
        else
            puts "Sorry! Cuisine not supported. Type cuisines to see the supported cuisines or type Exit."
        end    
         
        
    end

    def goodbye
        puts "Get Coocking!!!"
    end
end
