feature 'Homepage' do
  scenario 'Can greet the user' do
    visit('/')
    expect(page).to have_content 'Hello!'
  end
end
