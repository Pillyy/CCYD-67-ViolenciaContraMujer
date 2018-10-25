class AnswersAlterantivesController < ApplicationController
  before_action :set_answers_alterantive, only: [:show, :update, :destroy]

  # GET /answers_alterantives
  def index
    @answers_alterantives = AnswersAlterantive.all

    render json: @answers_alterantives
  end

  # GET /answers_alterantives/1
  def show
    render json: @answers_alterantive
  end

  # POST /answers_alterantives
  def create
    @answers_alterantive = AnswersAlterantive.new(answers_alterantive_params)

    if @answers_alterantive.save
      render json: @answers_alterantive, status: :created, location: @answers_alterantive
    else
      render json: @answers_alterantive.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /answers_alterantives/1
  def update
    if @answers_alterantive.update(answers_alterantive_params)
      render json: @answers_alterantive
    else
      render json: @answers_alterantive.errors, status: :unprocessable_entity
    end
  end

  # DELETE /answers_alterantives/1
  def destroy
    @answers_alterantive.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answers_alterantive
      @answers_alterantive = AnswersAlterantive.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def answers_alterantive_params
      params.require(:answers_alterantive).permit(:history_id, :message, :score)
    end
end
