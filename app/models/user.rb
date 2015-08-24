class User < ActiveRecord::Base
  before_create :set_last_login

  def set_last_login
    self.last_login = Time.current.in_time_zone("America/Los_Angeles")
  end
end
