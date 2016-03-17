require_relative 'user_activity'

class Criteria

  attr_reader :acceptance_criteria

  def initialize
    @acceptance_criteria = [:analysis_performed,
                            :custom_audience_created,
                            :analysis_exported,
                            :report_downloaded]
  end

  def look_up(email)
    user_activity = UserActivity.new(email)
    occurences = {}
    acceptance_criteria.each { |criteria| occurences[criteria] = (user_activity.list[criteria]) }
    return occurences
  end

  def add_criteria(name)
    acceptance_criteria << name
  end

  def remove_criteria(name)
    acceptance_criteria.delete(name)
  end

end
