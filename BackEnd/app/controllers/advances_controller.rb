class AdvancesController < ApplicationController
  before_action :set_advance, only: [:show, :update, :destroy]

  # GET /advances
  def index
    @advances = Advance.all

    render json: @advances
  end

  # GET /advances/1
  def show
    render json: @advance
  end

  # POST /advances
  def create
    @advance = Advance.new(advance_params)

    if @advance.save
      render json: @advance, status: :created, location: @advance
    else
      render json: @advance.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /advances/1
  def update
    if @advance.update(advance_params)
      render json: @advance
    else
      render json: @advance.errors, status: :unprocessable_entity
    end
  end

  # DELETE /advances/1
  def destroy
    @advance.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advance
      @advance = Advance.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def advance_params
      params.require(:advance).permit(:profile_id, :history_id, :score)
    end
end
