require 'capybara/rspec'
require './app'

Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe('the paths for adding a new word and definition(s) for that word', {:type => :feature}) do
  it('allows the user to choose option to add a new word') do
    visit('/')
    click_link('Add a new word')
    expect(page).to have_content('Enter a word!')
  end

  it('allows the user to add a word') do
    visit('/words/new')
    fill_in('word', :with => 'polyphiloprogenitive')
    click_button('Add Word')
    expect(page).to have_content('successfully added')
  end

  it('has the ability to see the new word they just added') do
    visit('/words')
    expect(page).to have_content('polyphiloprogenitive')
  end

  it('has the link to add a definition to the added word') do
    visit('/words')
    click_link('polyphiloprogenitive')
    expect(page).to have_content('Add Definition')
  end

  it('click on Add Definition to be taken to form page for adding definition') do
    visit('/words/1')
    click_link('Add Definition')
    expect(page).to have_content('polyphiloprogenitive means:')
  end

end
