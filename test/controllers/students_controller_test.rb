require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest
  test "should get only:" do
    get students_only:_url
    assert_response :success
  end

  test "should get [:index," do
    get students_[:index,_url
    assert_response :success
  end

  test "should get :destroy," do
    get students_:destroy,_url
    assert_response :success
  end

  test "should get :show]" do
    get students_:show]_url
    assert_response :success
  end

end
