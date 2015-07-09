require 'rails_helper'

RSpec.describe "households/show", type: :view do
  before(:each) do
    @household = assign(:household, Household.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
