class CuisineInspoDishes::Cuisine
    @@cuisines = ["African", "American", "British", "Cajun", "Caribbean", "Chinese", "Eastern European", "European", "French", "German", "Greek", "Indian", "Irish", "Italian", "Japanese", "Jewish", "Korean", "Latin American", "Mediterranean", "Mexican", "Middle Eastern", "Nordic", "Southern", "Spanish", "Thai", "Vietnamese"]

    def self.show_cuisines()
        @@cuisines.each do |cuisine|
            # @@cuisines << cuisine
            puts cuisine
        end 
    end
end