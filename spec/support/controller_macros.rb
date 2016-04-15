module ControllerMacros
  def login_admin
    before(:each) do
      admin =  FactoryGirl.create(:admin)
      allow(controller).to receive(:current_admin).and_return(admin)
      @request.env["devise.mapping"] = Devise.mappings[:admin]
      sign_in admin
    end
  end

  def login_user
    user =  FactoryGirl.create(:user)
    allow(controller).to receive(:current_user).and_return(user)
    @request.env["devise.mapping"] = Devise.mappings[:user]
    sign_in user
  end
end

RSpec.configure do |config|
  config.extend ControllerMacros, :type => :controller
end
