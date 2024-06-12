require "test_helper"

class DioBlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dio_blog = dio_blogs(:one)
  end

  test "should get index" do
    get dio_blogs_url
    assert_response :success
  end

  test "should get new" do
    get new_dio_blog_url
    assert_response :success
  end

  test "should create dio_blog" do
    assert_difference("DioBlog.count") do
      post dio_blogs_url, params: { dio_blog: { author: @dio_blog.author, description: @dio_blog.description, note: @dio_blog.note, text: @dio_blog.text, title: @dio_blog.title } }
    end

    assert_redirected_to dio_blog_url(DioBlog.last)
  end

  test "should show dio_blog" do
    get dio_blog_url(@dio_blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_dio_blog_url(@dio_blog)
    assert_response :success
  end

  test "should update dio_blog" do
    patch dio_blog_url(@dio_blog), params: { dio_blog: { author: @dio_blog.author, description: @dio_blog.description, note: @dio_blog.note, text: @dio_blog.text, title: @dio_blog.title } }
    assert_redirected_to dio_blog_url(@dio_blog)
  end

  test "should destroy dio_blog" do
    assert_difference("DioBlog.count", -1) do
      delete dio_blog_url(@dio_blog)
    end

    assert_redirected_to dio_blogs_url
  end
end
