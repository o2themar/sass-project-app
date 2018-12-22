require 'rails_helper'

RSpec.describe "user_projects/index", type: :view do
  before(:each) do
    assign(:user_projects, [
      UserProject.create!(
        :project => nil,
        :user => nil
      ),
      UserProject.create!(
        :project => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of user_projects" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
