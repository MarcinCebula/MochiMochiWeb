var namespace = _namespace(Page, "Page.Views");
namespace.IndexView = Backbone.View.extend({
  template: JST['page/index_template'],
  tagName: "div",
  className: "content",
//  id: "index-page",
  events: { },
  initialize: function() {
    this.render();
  },
  render: function() {
    return this.$el.html(this.template);
  }
});
