require 'capybara/rspec'
require './app'

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('list path', {:type => :feature}) do
  it "will display inputted word to a list" do
    visit('/')
    fill_in('word', :with=> 'balloon')
    click_button('Throw that word up there!')
    expect(page).to have_content('balloon')
  end
    it "display word from list on output page" do
    visit('/')
    click_link('balloon')
    expect(page).to have_content('balloon')
  end
end

describe('list path', {:type => :feature}) do
  it "will display inputted definition to a list" do
    visit('/output/1')
    fill_in('definition', :with=> 'a fun fair keepsake')
    click_button('Put that definition up there!')
    expect(page).to have_content('a fun fair keepsake')
  end
    it "take user back to home page" do
    visit('/output/1')
    click_link('Back to homepage!')
    expect(page).to have_content("Hey lets enter some words! balloon Write your words here! (one at a time please! it hurts my brain!) Throw that word up there!")
  end
end
