require 'rails_helper'

RSpec.describe User, type: :model do

  it 'should have a valid factory' do
    expect(build(:user)).to be_valid
  end

  it { should define_enum_for(:role).with([:user, :admin]) }

  describe 'validations' do
    it { should validate_presence_of(:email) }
  end

end
