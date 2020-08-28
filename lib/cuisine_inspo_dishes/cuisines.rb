class CuisineInspoDishes::Cuisine
    @@cuisines = ["african", "american", "british", "cajun", "caribbean", "chinese", "eastern european", "european", "french", "german", "greek", "indian", "irish", "italian", "japanese", "jewish", "korean", "latin american", "mediterranean", "mexican", "middle eastern", "nordic", "southern", "spanish", "thai", "vietnamese"]
    # @@cuisines = ["African", "American", "British", "Cajun", "Caribbean", "Chinese", "Eastern European", "European", "French", "German", "Greek", "Indian", "Irish", "Italian", "Japanese", "Jewish", "Korean", "Latin American", "Mediterranean", "Mexican", "Middle Eastern", "Nordic", "Southern", "Spanish", "Thai", "Vietnamese"]

    def self.show_cuisines()
        @@cuisines.each do |cuisine|
            # @@cuisines << cuisine
            puts cuisine
        end 
    end

    def self.validate_cuisine(input)
        if @@cuisines.index input.downcase
            CuisineInspoDishes::API.get_dishes(input);
         else
             puts "Sorry! Cuisine not supported. Type cuisines to see the supported cuisines or type Exit."
        end
    end
end



# class CuisineInspoDishes::Cuisine
#     @@cuisines = ["African", "American", "British", "Cajun", "Caribbean", "Chinese", "Eastern European", "European", "French", "German", "Greek", "Indian", "Irish", "Italian", "Japanese", "Jewish", "Korean", "Latin American", "Mediterranean", "Mexican", "Middle Eastern", "Nordic", "Southern", "Spanish", "Thai", "Vietnamese"]

#     attr_accessor :name

#     def initialize(name)
#         @name= name
#     end

#     def self.show_cuisines(name)
#         @@cuisines.each do |n|
#             # @@cuisines << cuisine
#             puts cuisine
#         end 