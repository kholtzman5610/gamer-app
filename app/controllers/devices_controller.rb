class DevicesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :catch_not_found
  before_action :set_device, only: [:show, :edit, :update, :destroy]
  layout 'device_layout'

  # GET /devices
  # GET /devices.json
  def index
    @devices = Device.all
  end

  # GET /devices/1
  # GET /devices/1.json
  def show
  end

  # GET /devices/new
  def new
    @device = Device.new
  end

  # GET /devices/1/edit
  def edit
  end

  # POST /devices
  # POST /devices.json
  def create
   @device = Device.new(device_params)
    if @device.save
      flash.notice = "The device record was created successfully."
      redirect_to @device
    else
      flash.now.alert = @device.errors.full_messages.to_sentence
      render :new
    end
  end

  # PATCH/PUT /devices/1
  # PATCH/PUT /devices/1.json
  def update
   if @device.update(device_params)
      flash.notice = "The device record was updated successfully."
      redirect_to @device
    else
      flash.now.alert = @device.errors.full_messages.to_sentence
      render :edit
    end
  end

  # DELETE /devices/1
  # DELETE /devices/1.json
  def destroy
    @device.destroy
    respond_to do |format|
      format.html { redirect_to devices_url, notice: 'Device was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_device
      @device = Device.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def device_params
      params.require(:device).permit(:device_name, :game_id)
    end

    def catch_not_found(e)
      Rails.logger.debug("We had a not found exception.")
      flash.alert = e.message
      redirect_to devices_path
    end
end
