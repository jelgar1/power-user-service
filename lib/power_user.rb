require_relative 'criteria'
require_relative 'user'
require_relative 'scores'


class PowerUser

  def get_score(email)
    occurences = Criteria.new.look_up(email)
    Scores.new.look_up(occurences)

  end

end
