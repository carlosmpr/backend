require "test_helper"

class UserChallengesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_challenge = user_challenges(:one)
  end

  test "should get index" do
    get user_challenges_url, as: :json
    assert_response :success
  end

  test "should create user_challenge" do
    assert_difference('UserChallenge.count') do
      post user_challenges_url, params: { user_challenge: { code_challenge_id: @user_challenge.code_challenge_id, user_id: @user_challenge.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show user_challenge" do
    get user_challenge_url(@user_challenge), as: :json
    assert_response :success
  end

  test "should update user_challenge" do
    patch user_challenge_url(@user_challenge), params: { user_challenge: { code_challenge_id: @user_challenge.code_challenge_id, user_id: @user_challenge.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy user_challenge" do
    assert_difference('UserChallenge.count', -1) do
      delete user_challenge_url(@user_challenge), as: :json
    end

    assert_response 204
  end
end
