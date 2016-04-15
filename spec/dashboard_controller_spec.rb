require "rails_helper"

RSpec.describe Admin::DashboardController, :type => :controller do
  describe "GET #index" do

    context 'loggedin' do
      login_admin

      it "responds successfully with an HTTP 200 status code" do
        get :index
        expect(response).to be_success
        expect(response).to have_http_status(200) 
      end

      it "renders the index template" do
        get :index
        expect(response).to render_template("index")
      end
    end

    context 'no login' do
      it "responds redirect with an HTTP 302 status code" do
        get :index
        expect(response).to have_http_status(302)
      end
    end
  end
end
