feature 'Editing a message' do
  scenario 'Clicking Edit shows full message' do
    add_message_and_submit
    click_link 'web_helper message'
    click_button 'Edit'
    expect(page).to have_content 'web_helper message'
  end

  scenario 'Editing message and seeing all messages including edited' do
    add_message_and_submit
    click_link 'web_helper message'
    click_button 'Edit'
    expect(page).to have_content 'web_helper message'
    fill_in :message[text], with: 'edited message'
    click_button 'Update'
    expect(page).not_to have_content 'web_helper message'
    expect(page).to have_content 'edited message'
  end
end
