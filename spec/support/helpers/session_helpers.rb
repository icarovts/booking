module SessionHelpers
  def sign_in_as(user)
    visit root_path
    click_link 'Login'
    within("#new_user") do
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
    end
    click_button 'Sign in'
  end
end