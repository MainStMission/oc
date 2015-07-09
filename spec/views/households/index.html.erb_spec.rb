require 'rails_helper'

RSpec.describe "households/index", type: :view do
  before(:each) do
    assign(:households, [
      Household.create!(),
      Household.create!()
    ])
  end

  it "renders a list of households" do
    render
  end
end
