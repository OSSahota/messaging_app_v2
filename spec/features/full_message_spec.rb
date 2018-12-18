feature 'Linking to full message' do
  scenario 'clicking on truncated message takes you to full text' do
    visit '/'
    fill_in :message, with: 'MessageExceeds20Character'
    click_button 'Submit'

    click_link 'MessageExceeds20Char'
    expect(page).to have_content 'MessageExceeds20Character'
  end
end
