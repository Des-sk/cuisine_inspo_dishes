
class CuisineInspoDishes::Dishes
    # @@dishArr = []

    def self.new_dishes_collection(dishes)
        dishes.each do |dish|
            # @@dishArr << dish["title"]
            puts dish["title"]
        end 
        # puts @@dishArr

    end   
end

# class CuisineInspoDishes::Dishes
#     @@dishArr = []

#     attr_accessor :title

#     def intialize(title)
#         @title= title
#     end

#     def self.new_dishes_collection(title)
#         dishes.each do |t|
#             @@dishArr << dish["title"]
#         end 
#         puts @@dishArr
#     end

