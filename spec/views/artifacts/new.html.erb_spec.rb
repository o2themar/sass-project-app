require 'rails_helper'

RSpec.describe "artifacts/new", type: :view do
  before(:each) do
    assign(:artifact, Artifact.new(
      :name => "MyString",
      :key => "MyString",
      :project => nil
    ))
  end

  it "renders new artifact form" do
    render

    assert_select "form[action=?][method=?]", artifacts_path, "post" do

      assert_select "input[name=?]", "artifact[name]"

      assert_select "input[name=?]", "artifact[key]"

      assert_select "input[name=?]", "artifact[project_id]"
    end
  end
end
