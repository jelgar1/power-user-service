require_relative '../lib/criteria.rb'

describe Criteria do
  subject(:criteria) { described_class.new }
  it 'initializes with the current entry criteria' do
    expect(criteria.acceptance_criteria).to include(:analysis_performed)
  end

  describe '#add_criteria' do
    it 'should add a criteria to the list' do
      criteria.add_criteria(:page_visits)
      expect(criteria.acceptance_criteria).to include(:page_visits)
    end
  end

  describe '#remove_criteria' do
    it 'should remove a criteria from the list' do
      criteria.remove_criteria(:analysis_performed)
      expect(criteria.acceptance_criteria).not_to include(:analysis_performed)
    end
  end

  describe '#look_up' do
    it 'should return a score for those criteria' do
      expect(criteria.look_up('joebloggs@gmail.com')).to include(:analysis_performed=>10)
    end
  end

end
