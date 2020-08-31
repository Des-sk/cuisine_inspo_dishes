
class CuisineInspoDishes::Cuisine
    @@cuisines = ["african", "american", "british", "cajun", "caribbean", "chinese", "eastern european", "european", "french", "german", "greek", "indian", "irish", "italian", "japanese", "jewish", "korean", "latin american", "mediterranean", "mexican", "middle eastern", "nordic", "southern", "spanish", "thai", "vietnamese"]

    def self.show_cuisines()
        @@cuisines.each do |cuisine|
            puts cuisine
        end 
    end

    def self.validate_cuisine(input)
        if @@cuisines.index input.downcase
            true
        else
            false
        end
    end
end

