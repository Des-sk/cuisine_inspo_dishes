# Our CLI Controller
#require_relative "../lib/cuisine_inspo_dishes/api"


class CuisineInspoDishes::Cli


    def call
        puts "Hi, and welcome to the Cuisine Inspo Dishes cli"
        list_cuisines
        puts "Enter a cuisine style to get some inspiration dishes or type Exit"

        while @input != "Exit" 
            #puts "Enter a cuisine style to get some inspiration dishes or type Exit"
            #options
            get_user_input
            validate(@input)
            # options
            # get_user_input
            # list_dishes(@input)          
        end
        goodbye
    end

    # def options
    #     puts "Enter a cuisine style to get some inspiration dishes or type Exit"
    #     # when "cuisine"
            # list_cuisines
        # end
    #end

    def get_user_input 
        @input = gets.strip
    end

    def list_cuisines
        puts "Here is a list of different cuisines from around the world"
        CuisineInspoDishes::Cuisine.show_cuisines();    
        # puts "Enter a cuisine style to get some inspiration dishes or type Exit"
    end

    def list_dishes(cuisine)
        puts "Enter a cuisine style to get some inspiration dishes or type Exit"
         CuisineInspoDishes::API.get_dishes(cuisine);
        
    end 

    def validate(cuisine)
        is_validated = CuisineInspoDishes::Cuisine.validate_cuisine(cuisine);
        if cuisine != "Exit" && cuisine != "cuisine" && is_validated == true
            # CuisineInspoDishes::Cuisine.validate_cuisine(cuisine);
        
            dishes_response = CuisineInspoDishes::API.new(cuisine)
            dishes = dishes_response.get_dishes()
            
            dishes_array = CuisineInspoDishes::Dishes.new_dishes_collection(dishes)
            puts dishes_array
            
            
            
            
            #TODO: loop with each over array and print
            # dishes_array.each do |dish|   
            #     puts dish["title"]
     
        elsif cuisine == "cuisine"
                list_cuisines
             puts "Enter a cuisine style to get some inspiration dishes or type Exit"
        else
             puts "Sorry! Cuisine not supported. Type cuisines to see the supported cuisines or type Exit."
         end
    end

    #     
    #     end
    # end 


    def goodbye
        puts "Get Coocking!!!"
    end







    # def menu
        
    # end
end


#     attr_accessor :cuisines :dishes
    
#     def initialize
#         @@cuisines= cuisines
#     end

#     def call
#         puts "Hi, and welcome to the Cuisine Inspo Dishes cli"
#         puts "Here is a list of diferente cuisisnes from around the world"
#         list_cuisines
#         menu
#         goodbye
#         #error
#         #list_dishes
#     end

#     def list_dishes(cuisine)
#         CuisineInspoDishes::API.get_dishes(cuisine);
#     end 

#     def list_cuisines
#         CuisineInspoDishes::Cuisine.show_cuisines();
#     end



#     def menu
#         input = nil
#         while input != "Exit"
#             puts "Enter a cuisine style to get some inspiration dishes or type Exit"
#             input = gets.strip.downcase
#         end
#             list_dishes(input)
#         end

#     def index
#         if @@cuisines.index input.downcase
#         list_dishes(input)

#         else
#             puts "Sorry! Cuisine not supported. Type cuisines to see the supported cuisines or type Exit."
#         end

#     end

#     def 

#         #case input
#         # #when "Italian"
#         #     list_dishes
#         #     end until input != @@cuisines
        

           
#             # when "cuisines" 
#             #     list_cuisines
#         end
#     end

#     # def error
#     #     if input != @@cuisines
#     #         puts "Sorry! Cuisine not supported. Type cuisines to see the supported cuisines or type Exit."
#     #     elsif "cuisines" 
#     #         list_cuisines
#     #     else
#     #         puts "Sorry! Cuisine not supported. Type cuisines to see the supported cuisines or type Exit."
#     #     end    
         
        
#     #end

#     def goodbye
#         puts "Get Coocking!!!"
#     end
# end
