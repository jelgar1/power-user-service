require_relative '../lib/power_user.rb'

describe PowerUser do
  subject(:power_user) { described_class.new }

  describe '#get_status' do
    it 'should return a status of ACTIVE_USER for Joe Bloggs' do
      expect(power_user.get_status('joebloggs@gmail.com')).to eq('ACTIVE_USER')
    end
  end

end
