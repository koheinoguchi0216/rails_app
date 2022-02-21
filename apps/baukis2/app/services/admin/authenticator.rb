class Admin::Authenticator
  def initialize(admini_strator)
    @admini_strator = admini_strator
  end

  def authenticate(raw_password)
    @admini_strator &&
      # !@admini_strator.suspended? &&
      @admini_strator.hashed_password &&
      BCrypt::Password.new(@admini_strator.hashed_password) == raw_password
  end
end
