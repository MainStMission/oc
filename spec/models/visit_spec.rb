require 'rails_helper'
require 'shoulda/matchers'

RSpec.describe Visit, type: :model do


  context "Associations" do
    it {is_expected.to belong_to(:household)}
    it {is_expected.to belong_to(:neighbor)}
  end

  it "has a valid factory"  do
    neighbor = create(:neighbor)
    household = create(:household, neighbors: [neighbor])
    visit = create(:visit, household: household, neighbor: neighbor, visited_on: "12-02-1994")
    expect(visit).to be_valid
  end
 
end
