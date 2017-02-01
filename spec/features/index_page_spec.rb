require "rails_helper"

RSpec.feature 'index page', :type => :feature do
  scenario 'home page has a text area' do
    visit '/'
    expect(page).to have_selector('textarea')
  end
  scenario 'home page has an input button' do
    visit '/'
    expect(page).to have_selector('input')
  end
  scenario 'input text shows up on page' do
    visit '/'
    fill_in 'note_text', with: 'this is some sample text'
    find('input[name="commit"]').click
    expect(page).to have_text('this is some sample text')
  end
end
