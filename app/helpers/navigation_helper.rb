module NavigationHelper
  def check_if_active(path)
    "active" if controller.controller_path == path[1..-1]
	end

	def check_if_active_action(action)
	  "active" if controller.action_name == action[0..-1]
  end

  def check_parent_path_name(path)

    req_path = request.fullpath
    "active" if req_path.slice(0..(req_path.rindex(/\//) - 1)) == path
  end

  def root_if_root_of_resource(path)
    req_path = request.fullpath
    req_path = req_path.slice(0..req_path.rindex(/\//) - 1)
    "active" if req_path.slice(0..(req_path.rindex(/\//) - 1)) == path
  end
end
