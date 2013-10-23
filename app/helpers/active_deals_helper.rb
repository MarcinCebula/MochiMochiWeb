module ActiveDealsHelper
  def disable_button_if_game_active(active)
    if active
      "disabled"
    else
      ""
    end
  end
  
  def check_if_current_action_is(action)
	  if controller.action_name == action
	    true
	  else
	    false
    end
  end
    
end