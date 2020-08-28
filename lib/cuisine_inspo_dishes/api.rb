require 'net/http'
#require_relative "../lib/cuisine_inspo_dishes/cli"

class CuisineInspoDishes::API
    @@domain = "https://api.spoonacular.com"
    @@base_path = "/recipes/complexSearch"
    @@api_key = "3dfb1e868fc74aec8c2bcf0cafb44f14"
    @@cuisine_type = "Italian"
    @@results_size = 10

    def self.get_dishes(cuisine)
        resp = HTTParty.get("#{@@domain}#{@@base_path}?apiKey=#{@@api_key}&cuisine=#{cuisine}&number=#{@@results_size}", {
            headers: {"Content-Type" => "application/json"},
        })

        dishes = resp["results"]
         #puts dishes
        CuisineInspoDishes::Dishes.new_dishes_collection(dishes)
    end
end