require 'test_helper'

class ProverbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proverb = proverbs(:one)
  end

  test "should get index" do
    get proverbs_url, as: :json
    assert_response :success
  end

  test "should create proverb" do
    assert_difference('Proverb.count') do
      post proverbs_url, params: { proverb: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show proverb" do
    get proverb_url(@proverb), as: :json
    assert_response :success
  end

  test "should update proverb" do
    patch proverb_url(@proverb), params: { proverb: {  } }, as: :json
    assert_response 200
  end

  test "should destroy proverb" do
    assert_difference('Proverb.count', -1) do
      delete proverb_url(@proverb), as: :json
    end

    assert_response 204
  end
end
