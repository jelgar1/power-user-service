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
end
