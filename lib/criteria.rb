class Criteria

  attr_reader :acceptance_criteria

  def initialize
    @acceptance_criteria = [:analysis_performed,
                            :custom_audience_created,
                            :analysis_exported,
                            :report_downloaded]
  end

  def add_criteria(name)
    acceptance_criteria << name
  end

  def remove_criteria(name)
    acceptance_criteria.delete(name)
  end

end
