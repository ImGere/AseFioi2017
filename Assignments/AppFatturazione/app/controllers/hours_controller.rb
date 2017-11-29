class HoursController < ApplicationController
  before_action :require_login
  before_action :set_hour, only: [:show, :edit, :update, :destroy]

  # GET /hours
  # GET /hours.json
  def index
    @hours = Hour.where(user_id: current_user.id).order(:date)
    @invoices = Invoice.all
  end

  # GET /hours/1
  # GET /hours/1.json
  def show

  end

  # GET /hours/new
  def new
    @hour = Hour.new(user: current_user)
    @clients = Client.where(user: current_user)
  end

  # GET /hours/1/edit
  def edit
  end

  # POST /hours
  # POST /hours.json
  def create
    @clients = Client.find_by_user_id(params[:user_id])
    @hour = Hour.new(hour_params)
    @hour.user_id = current_user.id

    respond_to do |format|
      if @hour.save
        format.html { redirect_to @hour, notice: 'Hour was successfully created.' }
        format.json { render :show, status: :created, location: @hour }
      else
        format.html { render :new }
        format.json { render json: @hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hours/1
  # PATCH/PUT /hours/1.json
  def update
    respond_to do |format|
      if @hour.update(hour_params)
        format.html { redirect_to @hour, notice: 'Hour was successfully updated.' }
        format.json { render :show, status: :ok, location: @hour }
      else
        format.html { render :edit }
        format.json { render json: @hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hours/1
  # DELETE /hours/1.json
  def destroy
    if !@hour.is_fatturata
      @hour.destroy
      respond_to do |format|
        format.html { redirect_to hours_url, notice: 'Hour was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      redirect_to :controller => 'hours', :action => 'index', error_message: "You cannot delete a billed hour."
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hour
      @hour = Hour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hour_params
      params.require(:hour).permit(:date, :start_time, :end_time, :description, :user_id, :client_id, :is_fatturata, :invoice_id)
    end
end
