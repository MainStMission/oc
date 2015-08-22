 require 'rails_helper'


RSpec.describe HouseholdsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Household. As you add validations to Household, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {household_name: "Brooke, Thomas"}
    {neighbor_id: 12}

  }

  let(:invalid_attributes) {
    {household_name: ""}
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # HouseholdsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  login_user

  describe "GET #index" do
    it "exposes households" do
      neighbor = create(:neighbor)
      household = create(:household, neighbors: [neighbor])
      get :index
      expect {controller.households.to eq([household])}
    end
  end


  describe "GET #show" do
    it "exposes the requested household as household" do
    neighbor = create(:neighbor)
    household = create(:household, neighbors: [neighbor])
      get :show, {id: household.to_param}
      expect {controller.household.to eq(household)}
    end
  end

  describe "GET #new" do
    it "exposes a new household as household" do
      get :new, {}
      expect {controller.household.to be_a_new(Household)}
    end
  end

  describe "GET #edit" do
    it "exposes the requested household as household" do
      neighbor = create(:neighbor)
      household = create(:household, neighbors: [neighbor])
      get :edit, {id: household.to_param}
      expect {controller.household.to eq(household)}
    end
  end

end
