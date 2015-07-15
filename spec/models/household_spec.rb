require 'rails_helper'

RSpec.describe Household, type: :model do

  it "has a household_name" do
    household = Household.new(household_name: "Jones")
    expect(household.household_name).to eq 'Jones'  

   end

end
