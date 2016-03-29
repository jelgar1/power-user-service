class Scores

  attr_reader :list

  def initialize
    @list = { analysis_performed: 5,
                custom_audience_created: 4,
                analysis_exported: 2,
                report_downloaded: 1}
  end

  def calculate_score(occurences)
    score = 0
    occurences.each do |criteria, number|
      score += list[criteria] * number
    end
    score
  end

end
