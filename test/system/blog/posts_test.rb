require "application_system_test_case"

class Blog::PostsTest < ApplicationSystemTestCase
  setup do
    @blog_post = blog_posts(:one)
  end

  test "visiting the index" do
    visit blog_posts_url
    assert_selector "h1", text: "Blog/Posts"
  end

  test "creating a Post" do
    visit blog_posts_url
    click_on "New Blog/Post"

    fill_in "Body", with: @blog_post.body
    fill_in "Title", with: @blog_post.title
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "updating a Post" do
    visit blog_posts_url
    click_on "Edit", match: :first

    fill_in "Body", with: @blog_post.body
    fill_in "Title", with: @blog_post.title
    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "destroying a Post" do
    visit blog_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post was successfully destroyed"
  end
end
