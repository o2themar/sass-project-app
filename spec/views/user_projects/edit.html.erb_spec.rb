require 'rails_helper'

RSpec.describe "user_projects/edit", type: :view do
  before(:each) do
    @user_project = assign(:user_project, UserProject.create!(
      :project => nil,
      :user => nil
    ))
  end

  it "renders the edit user_project form" do
    render

    assert_select "form[action=?][method=?]", user_project_path(@user_project), "post" do

      assert_select "input[name=?]", "user_project[project_id]"

      assert_select "input[name=?]", "user_project[user_id]"
    end
  end
end
