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
