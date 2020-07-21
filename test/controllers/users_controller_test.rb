require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url, as: :json
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { addr1: @user.addr1, addr2: @user.addr2, city: @user.city, company: @user.company, email: @user.email, fname: @user.fname, level: @user.level, lname: @user.lname, password_digest: @user.password_digest, permission: @user.permission, phone: @user.phone, state: @user.state, username: @user.username, zip: @user.zip } }, as: :json
    end

    assert_response 201
  end

  test "should show user" do
    get user_url(@user), as: :json
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { addr1: @user.addr1, addr2: @user.addr2, city: @user.city, company: @user.company, email: @user.email, fname: @user.fname, level: @user.level, lname: @user.lname, password_digest: @user.password_digest, permission: @user.permission, phone: @user.phone, state: @user.state, username: @user.username, zip: @user.zip } }, as: :json
    assert_response 200
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user), as: :json
    end

    assert_response 204
  end
end
