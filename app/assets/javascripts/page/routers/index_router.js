var namespace = _namespace(Page, "Page.Routers");
namespace.IndexRouter = Backbone.Router.extend({
  routes: {
    ""                    : "index",
    "HiFrom9WaveLabs"     : "index"
  },
  initialize: function() {
  },
  index: function() {
    this.navigate("HiFrom9WaveLabs");
    $("#index-page").html(
      new Page.Views.IndexView().el
    );
  }
});
