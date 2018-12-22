require 'rails_helper'

RSpec.describe "user_projects/new", type: :view do
  before(:each) do
    assign(:user_project, UserProject.new(
      :project => nil,
      :user => nil
    ))
  end

  it "renders new user_project form" do
    render

    assert_select "form[action=?][method=?]", user_projects_path, "post" do

      assert_select "input[name=?]", "user_project[project_id]"

      assert_select "input[name=?]", "user_project[user_id]"
    end
  end
end
