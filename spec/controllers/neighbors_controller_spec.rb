require 'rails_helper'

RSpec.describe NeighborsController, type: :controller do


  let(:valid_session) { {} }

  login_user

  describe "GET #index" do
    it "exposes neighbors" do
      neighbor = create(:neighbor)
      get :index
      controller.neighbors.should eq([neighbor])
    end
  end

  describe "GET #show" do
    it "exposes the requested neighbor as neighbor" do
    neighbor = create(:neighbor)
      get :show, {id: neighbor.to_param}
      controller.neighbor.should eq(neighbor)
    end
  end

  describe "GET #new" do
    it "exposes a new neighbor as neighbor" do
      get :new, {}
      controller.neighbor.should be_a_new(Neighbor)
    end
  end

  describe "GET #edit" do
    it "exposes the requested neighbor as neighbor" do
      neighbor = create(:neighbor)
      get :edit, {id: neighbor.to_param}
      controller.neighbor.should eq(neighbor)
    end
  end


end
