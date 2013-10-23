module RoutesHelper

  def admin_console_edit_button(game_id, console_resource, console_id)
    link_to "/admin/games/#{game_id}/console/#{console_resource}/#{console_id}/edit",
    :class => "btn btn-small  btn-warning",
    :method => :get do
      '<i class="icon-edit icon-white"></i>'.html_safe
    end
  end

  def admin_console_delete_button(game_id, console_resource, console_id)
    link_to "/admin/games/#{game_id}/console/#{console_resource}/#{console_id}",
    :class => "btn btn-small  btn-danger",
    :method => :delete,
    :confirm => "Are you sure you want to remove this game?" do
      '<i class="icon-remove-circle icon-white"></i>'.html_safe
    end
  end

  def admin_console_show_button(game_id, console)
    link_to console.console, "/admin/games/#{game_id}/console/#{console.resource_name}/#{console.id}", :class => "btn"
  end
  def admin_console_show_link(game_id, console)
    link_to console.title, "/admin/games/#{game_id}/console/#{console.resource_name}/#{console.id}"
  end

  def admin_deal_new_button(game_id, console)
    link_to "/admin/deals/games/#{console.resource_name}/new?game_id=#{game_id}",
    :class => "btn btn-small  btn-primary",
    :method => :get do
      '<i class="icon-white icon-tags"></i>'.html_safe
    end
  end

  def admin_deal_show(deal)
    class_s = deal.class.to_s
    resource = class_s.slice((class_s.rindex(/::/) + 2)..-1).underscore
    link_to "/admin/deals/games/#{resource}/#{deal.title_id}",
    :class => "btn  btn-small",
    :method => :get do
      '<i class="icon-info-sign"></i>'.html_safe
    end
  end
  def admin_deal_archive(deal)
    class_s = deal.class.to_s
    resource = class_s.slice((class_s.rindex(/::/) + 2)..-1).underscore
    link_to "/admin/deals/games/#{resource}/#{deal.title_id}/archive",
    :class => "btn btn-primary  btn-small",
    :confirm => "Are you sure you want to Archive this deal?",
    :method => :post do
      '<i class="icon-folder-open icon-white"></i>'.html_safe
    end
  end
  def admin_deal_delete(deal)
    class_s = deal.class.to_s
    resource = class_s.slice((class_s.rindex(/::/) + 2)..-1).underscore
    link_to "/admin/deals/games/#{resource}/#{deal.title_id}/",
    :class => "btn btn-danger btn-small",
    :confirm => "Are you sure you want to Delete this deal?",
    :method => :delete do
      '<i class="icon-trash icon-white"></i>'.html_safe
    end
  end

  def admin_archive_deal_show(deal)
    class_s = deal.class.to_s
    resource = class_s.slice((class_s.rindex(/::/) + 2)..-1).underscore
    link_to "/admin/archive/games/#{resource}/#{deal.title_id}",
    :class => "btn  btn-small",
    :method => :get do
      '<i class="icon-info-sign"></i>'.html_safe
    end
  end
  def admin_archive_deal_delete(deal)
    class_s = deal.class.to_s
    resource = class_s.slice((class_s.rindex(/::/) + 2)..-1).underscore
    link_to "/admin/archive/games/#{resource}/#{deal.title_id}/",
    :class => "btn btn-danger btn-small",
    :confirm => "Are you sure you want to Delete this deal?",
    :method => :delete do
      '<i class="icon-trash icon-white"></i>'.html_safe
    end
  end

  def admin_retailer_edit(id)
    link_to "/admin/utilities/retailers//#{id}/edit/",
    :class => "btn btn-warning",
    :method => :get do
      '<i class="icon-edit icon-white"></i> Edit'.html_safe
    end
  end
  def admin_retailer_delete(id)
    link_to "/admin/utilities/retailers/#{id}",
    :class => "btn btn-danger",
    :confirm => "Are you sure you want to Delete this retailer?",
    :method => :delete do
      '<i class="icon-trash icon-white"></i> Delete'.html_safe
    end
  end

end
