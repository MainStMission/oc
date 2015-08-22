require 'rails_helper'
require 'shoulda/matchers'

RSpec.describe Visit, type: :model do


  context "Associations" do
    it {should belong_to(:household)}
    it {should belong_to(:neighbor)}
  end

  it "has a valid factory"  do
    neighbor = create(:neighbor)
    household = create(:household, neighbors: [neighbor])
    visit = create(:visit, household: household, neighbor: neighbor)
    expect(visit).to be_valid
  end
 
end
