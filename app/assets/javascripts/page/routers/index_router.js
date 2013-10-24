var namespace = _namespace(Page, "Page.Routers");
namespace.IndexRouter = Backbone.Router.extend({
  routes: {
    ""                    : "index",
    "HiFromMochiMochi"     : "index"
  },
  initialize: function() {
  },
  index: function() {
    ga('send', 'pageview', { 'page': '/page/index' });
    this.navigate("HiFromMochiMochi");
    $("#index-page").html(
      new Page.Views.IndexView().el
    );
  }
});
