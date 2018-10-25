require 'test_helper'

class HistoryCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @history_card = history_cards(:one)
  end

  test "should get index" do
    get history_cards_url, as: :json
    assert_response :success
  end

  test "should create history_card" do
    assert_difference('HistoryCard.count') do
      post history_cards_url, params: { history_card: { history_id: @history_card.history_id, order: @history_card.order, picture: @history_card.picture } }, as: :json
    end

    assert_response 201
  end

  test "should show history_card" do
    get history_card_url(@history_card), as: :json
    assert_response :success
  end

  test "should update history_card" do
    patch history_card_url(@history_card), params: { history_card: { history_id: @history_card.history_id, order: @history_card.order, picture: @history_card.picture } }, as: :json
    assert_response 200
  end

  test "should destroy history_card" do
    assert_difference('HistoryCard.count', -1) do
      delete history_card_url(@history_card), as: :json
    end

    assert_response 204
  end
end
