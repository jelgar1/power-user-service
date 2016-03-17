require_relative 'criteria'
require_relative 'scores'
require_relative 'status'

class PowerUser

  def get_status(email)
    occurences = Criteria.new.look_up(email)
    scores = Scores.new.calculate_score(occurences)
    return Status.new.calculate_status(scores)
  end

end
