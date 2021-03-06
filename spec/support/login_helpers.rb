module LoginHelpers
  # Internal: Login as the specified user
  #
  # user     - User instance to login with
  # remember - Whether or not to check "Remember me" (default: false)
  def login_with(user, remember: false)
    visit new_user_session_path
    fill_in "user[email]",        with: user.email
    fill_in "user[password]",     with: user.password
    check 'user_remember_me' if remember
    click_button "Log in"
    Thread.current[:current_user] = user
  end

  # Requires Javascript driver.
  def logout
    visit destroy_user_session_path
  end
end