require_relative '../lib/scores.rb'

describe Scores do
  subject(:scores) { described_class.new }
  let(:occurences) { {:analysis_performed=>10, :custom_audience_created=>3, :analysis_exported=>0, :report_downloaded=>7}}
  let(:different_occurences) { {:analysis_performed=>5, :custom_audience_created=>2, :analysis_exported=>1, :report_downloaded=>6}}

describe '#calculate_score' do
  it 'should add the total score' do
    expect(scores.calculate_score(occurences)).to eq(69)
    expect(scores.calculate_score(different_occurences)).to eq(41)
  end
end

end
