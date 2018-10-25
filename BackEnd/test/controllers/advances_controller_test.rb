require 'test_helper'

class AdvancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @advance = advances(:one)
  end

  test "should get index" do
    get advances_url, as: :json
    assert_response :success
  end

  test "should create advance" do
    assert_difference('Advance.count') do
      post advances_url, params: { advance: { history_id: @advance.history_id, profile_id: @advance.profile_id, score: @advance.score } }, as: :json
    end

    assert_response 201
  end

  test "should show advance" do
    get advance_url(@advance), as: :json
    assert_response :success
  end

  test "should update advance" do
    patch advance_url(@advance), params: { advance: { history_id: @advance.history_id, profile_id: @advance.profile_id, score: @advance.score } }, as: :json
    assert_response 200
  end

  test "should destroy advance" do
    assert_difference('Advance.count', -1) do
      delete advance_url(@advance), as: :json
    end

    assert_response 204
  end
end
