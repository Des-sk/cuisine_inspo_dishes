
class CuisineInspoDishes::Dishes
    #@@dishArr = []

    # attr_accessor

    def self.new_dishes_collection(dishes)
        @dishes_array = []
        dishes.each do |dish|
            @dishes_array << dish["title"]
            # puts dish["title"]
        end 
        @dishes_array
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

