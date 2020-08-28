# Our CLI Controller
#require_relative "../lib/cuisine_inspo_dishes/api"


class CuisineInspoDishes::Cli


    def call
        puts "Hi, and welcome to the Cuisine Inspo Dishes cli"
            while @input != "Exit"
                list_cuisines
                get_user_input
                validate(@input) 
                # list_dishes(@input)          
            end
            goodbye
    end

    def get_user_input 
        @input = gets.strip
    end

    def list_cuisines
        puts "Here is a list of diferente cuisisnes from around the world"
        CuisineInspoDishes::Cuisine.show_cuisines();    
        puts "Enter a cuisine style to get some inspiration dishes or type Exit"
    end

    def list_dishes(cuisine)
         CuisineInspoDishes::API.get_dishes(cuisine);
    end 

    def validate(cuisine)
        CuisineInspoDishes::Cuisine.validate_cuisine(cuisine);
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