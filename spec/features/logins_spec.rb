require 'rails_helper'

# see spec/support/login_helpers.rb
RSpec.feature "Login", type: :feature do
  let(:user){ create(:user) }

  describe 'initial login after setup' do
    context 'normal user' do
      it 'should login successful to dashboard page' , js: true do
        login_with user
        expect(current_path).to eq root_path
      end
    end

    context 'user does not exist' do
      let(:invalid_user){ User.new(email: 'invalid_user@example.com' , password: 'invalid_user_password') }

      it 'should login failed to login page' , js: true do
        login_with invalid_user
        expect(current_path).to eq new_user_session_path
      end
    end
  end

  describe 'logout' do
    before do
      login_with user
    end
    it 'should logout successful to login page' , js: true do
      logout
      expect(current_path).to eq destroy_user_session_path
    end
  end
end