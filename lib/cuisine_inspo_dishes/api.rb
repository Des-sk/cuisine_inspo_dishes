require 'net/http'
#require_relative "../lib/cuisine_inspo_dishes/cli"

class CuisineInspoDishes::API
    @@domain = "https://api.spoonacular.com"
    @@base_path = "/recipes/complexSearch"
    @@api_key = "5f12f9346ce948f8a2300eaa13f1d683"
    @@cuisine_type = "Italian"
    @@results_size = 10

    def self.get_dishes(cuisine)
        resp = HTTParty.get("#{@@domain}#{@@base_path}?apiKey=#{@@api_key}&cuisine=#{cuisine}&number=#{@@results_size}", {
            headers: {"Content-Type" => "application/json"},
        })

        dishes = resp["results"]
        #  puts resp
        if resp["status"] != 'failure'
            CuisineInspoDishes::Dishes.new_dishes_collection(dishes)
        else
            puts resp.message
        end
        
    end
end