class HistoryCardsController < ApplicationController
  before_action :set_history_card, only: [:show, :update, :destroy]

  # GET /history_cards
  def index
    @history_cards = HistoryCard.all

    render json: @history_cards
  end

  # GET /history_cards/1
  def show
    render json: @history_card
  end

  # POST /history_cards
  def create
    @history_card = HistoryCard.new(history_card_params)

    if @history_card.save
      render json: @history_card, status: :created, location: @history_card
    else
      render json: @history_card.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /history_cards/1
  def update
    if @history_card.update(history_card_params)
      render json: @history_card
    else
      render json: @history_card.errors, status: :unprocessable_entity
    end
  end

  # DELETE /history_cards/1
  def destroy
    @history_card.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_history_card
      @history_card = HistoryCard.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def history_card_params
      params.require(:history_card).permit(:history_id, :picture, :order)
    end
end
