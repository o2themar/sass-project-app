require 'rails_helper'

RSpec.describe "UserProjects", type: :request do
  describe "GET /user_projects" do
    it "works! (now write some real specs)" do
      get user_projects_path
      expect(response).to have_http_status(200)
    end
  end
end
