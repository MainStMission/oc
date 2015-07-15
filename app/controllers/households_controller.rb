class HouseholdsController < ApplicationController
  before_action :set_household, only: [:show, :edit, :update, :destroy]

  # GET /households
  # GET /households.json
  def index
    @households = Household.all
  end

  # GET /households/1
  # GET /households/1.json
  def show
  end

  # GET /households/new
  def new
    @household = Household.new
  end

  # GET /households/1/edit
  def edit
  end

  # POST /households
  # POST /households.json
  def create
    @household = Household.new(household_params)

    respond_to do |format|
      if @household.save
        format.html { redirect_to @household, notice: 'Household was successfully created.' }
        format.json { render :show, status: :created, location: @household }
      else
        format.html { render :new }
        format.json { render json: @household.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /households/1
  # PATCH/PUT /households/1.json
  def update
    respond_to do |format|
      if @household.update(household_params)
        format.html { redirect_to @household, notice: 'Household was successfully updated.' }
        format.json { render :show, status: :ok, location: @household }
      else
        format.html { render :edit }
        format.json { render json: @household.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /households/1
  # DELETE /households/1.json
  def destroy
    @household.destroy
    respond_to do |format|
      format.html { redirect_to households_url, notice: 'Household was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_household
      @household = Household.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def household_params
      params[:household].permit(:household_name, :name, :created_at, :updated_at, :box_type, :income1, :inc_amt1,
                                :income2, :inc_amt2, :income3, :inc_amt3, :expense1, :exp_amt1, :expense2, :exp_amt2,
                                :expense3, :exp_amt3, :option1, :opt_val1, :option2, :opt_val2, :notes, :street, :apt,
                                :state, :city, :zip, :food_alert, :prayer_request, :money_notes, :special_needs, 
                                :how_heard, :proof_of_residency_type, :date_of_proof, :post_prayer, :post_needs,
                                :christmas, :bool1, :bool_val1, :bool2, :bool_val2, :bool3, :bool_val3, :bool4,
                                :bool_val4, :bool5, :bool_val5, :income4, :inc_amt4, :exp_amt4, :expense4, :s_numb,
                                :s_box)
    end
end
