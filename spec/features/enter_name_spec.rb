feature 'Enter name' do
  scenario 'User enters name' do
    visit('/')
    fill_in :user_name, with: 'Sarah'
    click_button 'Submit'
    expect(page).to have_content 'Hi, Sarah!'
  end
end
