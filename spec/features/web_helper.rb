def add_message_and_submit
  visit '/'
  fill_in :message, with: 'web_helper message'
  click_button 'Submit'
end
