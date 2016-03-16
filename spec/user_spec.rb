require_relative '../lib/user.rb'

describe User do
  subject(:user) { described_class.new("joebloggs@gmail.com") }
  it 'initializes with a status of nil' do
    expect(user.status).to eq nil
  end

  it 'inputs the users email address' do
    expect(user.email).to eq 'joebloggs@gmail.com'
  end
end
