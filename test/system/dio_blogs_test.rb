require "application_system_test_case"

class DioBlogsTest < ApplicationSystemTestCase
  setup do
    @dio_blog = dio_blogs(:one)
  end

  test "visiting the index" do
    visit dio_blogs_url
    assert_selector "h1", text: "Dio blogs"
  end

  test "should Criar livro favorito" do
    visit dio_blogs_url
    click_on "New dio blog"

    fill_in "Author", with: @dio_blog.author
    fill_in "Description", with: @dio_blog.description
    fill_in "Note", with: @dio_blog.note
    fill_in "Text", with: @dio_blog.text
    fill_in "Title", with: @dio_blog.title
    click_on "Criar livro favorito"

    assert_text "Dio blog was successfully created"
    click_on "Back"
  end

  test "should update Dio blog" do
    visit dio_blog_url(@dio_blog)
    click_on "Edit this dio blog", match: :first

    fill_in "Author", with: @dio_blog.author
    fill_in "Description", with: @dio_blog.description
    fill_in "Note", with: @dio_blog.note
    fill_in "Text", with: @dio_blog.text
    fill_in "Title", with: @dio_blog.title
    click_on "Update Dio blog"

    assert_text "Dio blog was successfully updated"
    click_on "Back"
  end

  test "should destroy Dio blog" do
    visit dio_blog_url(@dio_blog)
    click_on "Destroy this dio blog", match: :first

    assert_text "Dio blog was successfully destroyed"
  end
end
