module Session_helper extend ActiveSupport::Concern
  
  def clear_session_from_ids
    session[:product_id] = nil
    session[:story_id] = nil
    session[:epic_id] = nil
  end
  
end