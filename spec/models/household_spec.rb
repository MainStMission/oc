require 'rails_helper'
require 'shoulda/matchers'

RSpec.describe Household, type: :model do

  context "Associations" do
    it {should have_many(:neighbors)}
    it {should validate_uniqueness_of(:household_name).with_message('We already have that Household')}
  end

  it "has a household_name" do
    household = Household.new(household_name: "Jones")
    expect(household.household_name).to eq 'Jones'  

   end


  it "has a valid factory"  do
    neighbor = create(:neighbor)
    household = create(:household, neighbors: [neighbor])
    expect(household).to be_valid
  end

end
