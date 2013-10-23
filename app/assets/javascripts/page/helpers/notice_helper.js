var namespace = _namespace(Page, 'Page.Helpers');
namespace.Notice = {
  error: function(header, message) {
    this.notice("alert alert-error", header, message);
  },
  warning: function(header, message) {
    this.notice("alert alert-block", header, message);
  },
  info: function(message) {
    this.notice("alert alert-info", header, message);
  },
  success: function(header, message) {
    this.notice("alert alert-success", header, message);
  },
  notice: function(className, header, message) {
    $('#notifications').html('<div class="'+ className +'"><b>'+ header +'</b><span>'+ message +'</span></div>');
    var interval = setInterval(function() {
      $('#notifications').empty();
      clearInterval(interval);
    }, 5000);
  }
}
