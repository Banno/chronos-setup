require "net/http"
require 'json'

describe "Chronos" do

  it "chronos should be healthy" do
     http = Net::HTTP.new("chronos", 8081)

     request = Net::HTTP::Get.new('/scheduler/jobs')
     response = http.request(request)

     data = JSON.parse(response.body)
     expect(response.code).to eq("200")
    }
  end

end
