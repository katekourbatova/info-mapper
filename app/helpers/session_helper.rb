helpers do
  def session_current_user
    if session[:user_id].nil?
      @_current_user = nil
    else
      @_current_user ||= User.find(session[:user_id])
    end
  end

  def session_set_user(user)
    @_current_user = user
    session[:user_id] = @_current_user.id
  end
end
