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

  end
end

RSpec.configure do |config|
  config.extend ControllerMacros, :type => :controller
end
