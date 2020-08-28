
class CuisineInspoDishes::Dishes
    @@dishArr = []

    def self.new_dishes_collection(dishes)
        # dishesArr = []
        dishes.each do |dish|
            @@dishArr << dish["title"]
        end 
        puts @@dishArr

    end
end