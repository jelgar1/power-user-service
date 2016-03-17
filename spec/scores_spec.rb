require_relative '../lib/scores.rb'

describe Scores do
  subject(:scores) { described_class.new }
  let(:occurences) { {:analysis_performed=>10, :custom_audience_created=>3, :analysis_exported=>0, :report_downloaded=>7}
 }

  # occurences =  {:analysis_performed=>10, :custom_audience_created=>3, :analysis_exported=>0, :report_downloaded=>7}

  it 'initializes with the current scores' do
    expect(scores.list).to include(:analysis_performed => 5)
  end

  describe '#calculate_score' do
    it 'should add the total score' do
      expect(scores.calculate_score(occurences)).to eq(69)
    end
  end

end
