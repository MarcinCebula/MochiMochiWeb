Backbone.Model.prototype.remove = function(options) {
  options = options ? _.clone(options) : {};
  var model = this;
  var success = options.success;

  var destroy = function() {
    model.trigger('destroy', model, model.collection, options);
  };

  options.success = function(resp) {
    if (options.wait || model.isNew()) destroy();
    if (success) success(model, resp, options);
    if (!model.isNew()) model.trigger('sync', model, resp, options);
  };

  if (this.isNew()) {
    options.success();
    return false;
  }
  wrapError(this, options);
};
