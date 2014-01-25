require "test_helper"

feature "MainMenu" do
  scenario "User sees home and new article text on the root page" do
    visit root_path
    page.must_have_content "Home"
    page.wont_have_content "add article"
  end
end

feature "New comment button" do
  scenario "User can add new comment on root page", :js => true do
    visit root_path

    # page.driver.browser.switch_to.frame 'top-frame' # Selenium::WebDriver::Error::NoSuchFrameError: Unable to locate frame: top-frame
     page.find('#button_152').click          # not working
    # click_button("#button_152")             # not working
    # first(:xpath, '//button[@id="button_152"]').click
    within "#data_152" do
    click_on("new comment")
    #page.find("#button_#{id}",:visible => true).click
    # page.find('#button_152').click          # not working
    within("#comment_row_#{id}") do
        fill_in('content', :with => 'this is a comment')
        click_button('create comment')
        page.must_have_flash_message('Successfully created')
     end
   end
  end
end
