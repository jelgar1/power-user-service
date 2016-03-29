require_relative 'scores'

class PowerUser

  attr_reader :user_activity

  MINIMUM_ACTIVE_USER = 20
  MINIMUM_SUPER_USER = 100

  def init(email)
    @email = email
  end

  def get_status(email)
    occurences = user_activity_lookup(email)
    score = Scores.new.calculate_score(occurences)
    calculate_status(score)
  end

  def user_activity_lookup(email)
    user_activity = UserActivity.new(email)
    activities = user_activity.activities(
          :analysis_performed,
          :custom_audience_created,
          :analysis_exported,
          :report_downloaded
    )
    activities
  end

  def calculate_status(score)
    if score < MINIMUM_ACTIVE_USER
      'INACTIVE_USER'
    elsif score < MINIMUM_SUPER_USER
      'ACTIVE_USER'
    else
      'SUPER_USER'
    end
  end

end
