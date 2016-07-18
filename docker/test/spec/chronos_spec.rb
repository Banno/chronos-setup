require 'json'
require 'net/http'
require 'rspec/sidecar'

describe "Chronos" do

  it "chronos should be healthy" do
    wait_until(timeout: 120) do
      begin
        http = Net::HTTP.new("chronos", 8081)

        request = Net::HTTP::Get.new('/scheduler/jobs')
        response = http.request(request)

        data = JSON.parse(response.body)
        expect(response.code).to eq("200")
      rescue
          false
      end
    end
  end

end
