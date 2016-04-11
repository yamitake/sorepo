require "rails_helper"

RSpec.describe Admin::DashboardController, :type => :controller do
  describe "GET #index" do
    let(:admin) { FactoryGirl.build(:admin) }

    before do
      #login_admin admin
    end

    it "responds successfully with an HTTP 200 status code" do
      pending
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200) 
    end

    it "renders the index template" do
      pending
      get :index
      expect(response).to render_template("index")
    end
  end
end
