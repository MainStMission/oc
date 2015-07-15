require 'rails_helper'

RSpec.describe "Households", type: :request do
  describe "GET /households" do
    it "Validate Households_path" do
      get households_path
      expect(response).to have_http_status(200)
    end
  end
end
