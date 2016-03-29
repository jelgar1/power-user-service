require_relative '../lib/power_user.rb'
require 'pry'

describe PowerUser do
  subject(:power_user) { described_class.new }

  describe '#get_status' do
    it 'should return a status of ACTIVE_USER for Joe Bloggs' do
      allow(power_user).to receive(:user_activity_lookup).and_return(
            analysis_performed: 10,
            custom_audience_created: 3,
            analysis_exported: 0,
            report_downloaded: 7)
      expect(power_user.get_status('joebloggs@gmail.com')).to eq('ACTIVE_USER')
    end
  end

  describe '#calculate_status' do

    it 'returns INACTIVE_USER when the score is less than 20' do
      expect(power_user.calculate_status(PowerUser::MINIMUM_ACTIVE_USER-1)).to eq('INACTIVE_USER')
    end

    it 'returns ACTIVE_USER when score is in between 19 and 100' do
      expect(power_user.calculate_status(PowerUser::MINIMUM_ACTIVE_USER)).to eq('ACTIVE_USER')
    end

    it 'returns SUPER_USER when score is above 99' do
      expect(power_user.calculate_status(PowerUser::MINIMUM_SUPER_USER)).to eq('SUPER_USER')
    end

  end
end
