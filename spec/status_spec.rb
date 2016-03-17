require_relative '../lib/status.rb'

describe Status do
  subject(:status) { described_class.new }

  describe '#calculate_status' do

    it 'returns inactive user when the score is less than 20' do
      expect(status.calculate_status(Status::MINIMUM_ACTIVE_USER-1)).to eq('INACTIVE_USER')
    end

    it 'returns active user when score is in between 19 and 100' do
      expect(status.calculate_status(Status::MINIMUM_ACTIVE_USER)).to eq('ACTIVE_USER')
    end

    it 'returns super user when score is above 99' do
      expect(status.calculate_status(Status::MINIMUM_SUPER_USER)).to eq('SUPER_USER')
    end

  end

end
