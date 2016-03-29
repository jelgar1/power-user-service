require_relative 'criteria'
require_relative 'scores'
require_relative 'status'

class PowerUser

  attr_reader :user_activity

  def init(email)
    @email = email
    @acceptance_criteria = [:analysis_performed,
                            :custom_audience_created,
                            :analysis_exported,
                            :report_downloaded]
    @user_activity = user_activity
  end

  def get_status(email)
    occurences = user_activity_lookup(email)
    scores = Scores.new.calculate_score(occurences)
    return Status.new.calculate_status(scores)
  end

  def user_activity_lookup(acceptance_criteria)
    user_activity = UserActivity.new
    user_activity.activities
  end

end
