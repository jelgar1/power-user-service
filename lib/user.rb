class User

attr_reader :status, :email

def initialize(email)
  @email = email
  @status = nil
end

end
