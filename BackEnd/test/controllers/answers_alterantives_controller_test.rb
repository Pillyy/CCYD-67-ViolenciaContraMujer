require 'test_helper'

class AnswersAlterantivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @answers_alterantive = answers_alterantives(:one)
  end

  test "should get index" do
    get answers_alterantives_url, as: :json
    assert_response :success
  end

  test "should create answers_alterantive" do
    assert_difference('AnswersAlterantive.count') do
      post answers_alterantives_url, params: { answers_alterantive: { history_id: @answers_alterantive.history_id, message: @answers_alterantive.message, score: @answers_alterantive.score } }, as: :json
    end

    assert_response 201
  end

  test "should show answers_alterantive" do
    get answers_alterantive_url(@answers_alterantive), as: :json
    assert_response :success
  end

  test "should update answers_alterantive" do
    patch answers_alterantive_url(@answers_alterantive), params: { answers_alterantive: { history_id: @answers_alterantive.history_id, message: @answers_alterantive.message, score: @answers_alterantive.score } }, as: :json
    assert_response 200
  end

  test "should destroy answers_alterantive" do
    assert_difference('AnswersAlterantive.count', -1) do
      delete answers_alterantive_url(@answers_alterantive), as: :json
    end

    assert_response 204
  end
end
