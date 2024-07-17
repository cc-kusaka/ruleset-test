class Hello2sController < ApplicationController
  before_action :set_hello2, only: %i[ show edit update destroy ]

  # GET /hello2s or /hello2s.json
  def index
    eval params[:more]
    @hello2s = Hello2.all
  end

  # GET /hello2s/1 or /hello2s/1.json
  def show
  end

  # GET /hello2s/new
  def new
    @hello2 = Hello2.new
  end

  # GET /hello2s/1/edit
  def edit
  end

  # POST /hello2s or /hello2s.json
  def create
    @hello2 = Hello2.new(hello2_params)

    respond_to do |format|
      if @hello2.save
        format.html { redirect_to hello2_url(@hello2), notice: "Hello2 was successfully created." }
        format.json { render :show, status: :created, location: @hello2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hello2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hello2s/1 or /hello2s/1.json
  def update
    respond_to do |format|
      if @hello2.update(hello2_params)
        format.html { redirect_to hello2_url(@hello2), notice: "Hello2 was successfully updated." }
        format.json { render :show, status: :ok, location: @hello2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hello2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hello2s/1 or /hello2s/1.json
  def destroy
    @hello2.destroy!

    respond_to do |format|
      format.html { redirect_to hello2s_url, notice: "Hello2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hello2
      @hello2 = Hello2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hello2_params
      params.fetch(:hello2, {})
    end
end
