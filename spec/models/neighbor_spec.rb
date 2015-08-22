require 'rails_helper'
require 'shoulda/matchers'

RSpec.describe Neighbor, type: :model do

  context "Associations" do
    it {should belong_to(:household)}
    it {should have_many(:visits)}
    it {should validate_presence_of(:first_name).with_message('Neighbor must have a first name')}
    it {should validate_presence_of(:last_name).with_message('Neighbor must have a last name')}
  end

  it "has a valid factory"  do
    neighbor = create(:neighbor)
    expect(neighbor).to be_valid
  end

  it "can return a full name combining first and last name" do

    neighbor = create(:neighbor) # first_name = Tom last_name =Brooke
    expect(neighbor.name).to eq "Tom Brooke"
  end
 
end
