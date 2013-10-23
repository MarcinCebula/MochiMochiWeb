//= require_self
//= require_tree ./models
//= require_tree ./views
//= require_tree ./routers
//= require_tree ./collections
//= require_tree ./helpers




function _namespace(namespace, namespaceString ) {
    var parts = namespaceString.split('.'),
        parent = namespace,
        pl, i;
    if (parts[0] == "Page") {
        parts = parts.slice(1);
    }
    pl = parts.length;
    for (i = 0; i < pl; i++) {
        //create a property if it doesnt exist
        if (typeof parent[parts[i]] == 'undefined') {
            parent[parts[i]] = {};
        }
        parent = parent[parts[i]];
    }
    return parent;
}


window.Page = {
  Models: {},
  Collections: {},
  Routers: {},
  Views: {},
  Helpers: {},
  init: function() {
    new Page.Routers.IndexRouter({})
    Backbone.history.start({})
  }
}

$(document).ready(function() {
  Page.init();
});
