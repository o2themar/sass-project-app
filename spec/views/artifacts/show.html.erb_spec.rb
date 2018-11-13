require 'rails_helper'

RSpec.describe "artifacts/show", type: :view do
  before(:each) do
    @artifact = assign(:artifact, Artifact.create!(
      :name => "Name",
      :key => "Key",
      :project => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Key/)
    expect(rendered).to match(//)
  end
end
