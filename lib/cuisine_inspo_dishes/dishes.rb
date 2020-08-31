
class CuisineInspoDishes::Dishes
 

    def self.new_dishes_collection(dishes)
        @dishes_array = []
        dishes.each do |dish|
            @dishes_array << dish["title"]
        end 
        @dishes_array
        
    end   
end


