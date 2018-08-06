require 'rails_helper'

RSpec.describe "Patterns", type: :request do
  describe "GET /patterns" do
    it "works! (now write some real specs)" do
      get patterns_path
      expect(response).to have_http_status(200)
    end
  end
end
