module Services
  class UserService

    def self.create_new_user(api_id)
      User.create(:api_id => api_id)
    end

    def self.find_by_api_id(session_user_id)
      User.find_by(:api_id => session_user_id)
    end
  end
end
