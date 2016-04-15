require 'rails_helper'

RSpec.describe User, type: :model do
  subject{ create(:user)}

  it { expect respond_to(:email) }
end
