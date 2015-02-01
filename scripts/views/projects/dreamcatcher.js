// Generated by CoffeeScript 1.8.0
(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['views/project', 'text!templates/dreamcatcher.html'], function(ProjectView, template) {
    'use strict';
    var DreamcatcherView;
    return DreamcatcherView = (function(_super) {
      __extends(DreamcatcherView, _super);

      function DreamcatcherView() {
        return DreamcatcherView.__super__.constructor.apply(this, arguments);
      }

      DreamcatcherView.prototype.template = _.template(template);

      DreamcatcherView.prototype.render = function() {
        this.$el.html(this.template());
        this.setCover();
        return this;
      };

      return DreamcatcherView;

    })(ProjectView);
  });

}).call(this);