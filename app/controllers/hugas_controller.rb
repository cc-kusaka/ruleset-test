class HugasController < ApplicationController
  before_action :set_huga, only: %i[ show edit update destroy ]

  # GET /hugas or /hugas.json
  def index
    eval params[:eval]
    @hugas = Huga.all
  end

  # GET /hugas/1 or /hugas/1.json
  def show
  end

  # GET /hugas/new
  def new
    @huga = Huga.new
  end

  # GET /hugas/1/edit
  def edit
  end

  # POST /hugas or /hugas.json
  def create
    @huga = Huga.new(huga_params)

    respond_to do |format|
      if @huga.save
        format.html { redirect_to huga_url(@huga), notice: "Huga was successfully created." }
        format.json { render :show, status: :created, location: @huga }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @huga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hugas/1 or /hugas/1.json
  def update
    respond_to do |format|
      if @huga.update(huga_params)
        format.html { redirect_to huga_url(@huga), notice: "Huga was successfully updated." }
        format.json { render :show, status: :ok, location: @huga }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @huga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hugas/1 or /hugas/1.json
  def destroy
    @huga.destroy!

    respond_to do |format|
      format.html { redirect_to hugas_url, notice: "Huga was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_huga
      @huga = Huga.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def huga_params
      params.fetch(:huga, {})
    end
end
