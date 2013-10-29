var namespace = _namespace(Page, "Page.Views");
namespace.IndexView = Backbone.View.extend({
  template: JST['page/index_template'],
  tagName: "div",
  className: "content",
//  id: "index-page",
  events: { },
  initialize: function() {
    _.bindAll(this, 'onResize', 'checkWidth', 'setVideoSize');

    this.currentSize = -1;
    this.render();
    this.checkWidth($(window).width());
    $(window).on("resize", this.onResize);
  },
  onResize: function(event) {
    var width = $(window).width();
    this.checkWidth(width);
  },
  checkWidth: function(width) {
    if(width < 968 && this.currentSize != 0) {
      this.currentWidth = 0;
      this.setVideoSize(610, 342);
    } else if(width < 1180 && this.currentSize != 1) {
      this.currentWidth = 1;
      this.setVideoSize(708, 398);
    } else if(width < 1367 && this.currentSize != 2) {
      this.currentWidth = 2
      this.setVideoSize(755, 425);
    } else if(width >= 1367 && this.currentSize != 3) {
      this.currentWidth = 3;
      this.setVideoSize(855, 480);
    }
  },
  setVideoSize: function(width, height) {
    this.$('.video-container iframe').css('height', height).css('width', width);
  },
  render: function() {
    return this.$el.html(this.template);
  }
});
