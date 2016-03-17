class Status

  MINIMUM_ACTIVE_USER = 20
  MINIMUM_SUPER_USER = 100

  def calculate_status(score)
    if score < MINIMUM_ACTIVE_USER
      return 'INACTIVE_USER'
    elsif score < MINIMUM_SUPER_USER
      return 'ACTIVE_USER'
    else
      return 'SUPER_USER'
    end
  end



end
