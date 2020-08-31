require 'net/http'

class CuisineInspoDishes::API
    attr_accessor :cuisine


    @@domain = "https://api.spoonacular.com"
    @@base_path = "/recipes/complexSearch"
    @@api_key = "5f12f9346ce948f8a2300eaa13f1d683"
    @@results_size = 10

    def initialize(cuisine)
        @resp = HTTParty.get("#{@@domain}#{@@base_path}?apiKey=#{@@api_key}&cuisine=#{cuisine}&number=#{@@results_size}", {
            headers: {"Content-Type" => "application/json"},
        })
    end 

    def get_dishes
        if @resp["status"] == 'failure'
            puts @resp["message"]
        else
            dishes = @resp["results"]     
        end       
    end
end