require 'rails_helper'

RSpec.describe Admin, type: :model do
  subject{ create(:admin)}

  it { expect respond_to(:email) }
end
