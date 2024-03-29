// Generated by CoffeeScript 1.8.0
(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(['love', 'views/navigation'], function(love, Navigation) {
    'use strict';
    var Router;
    return Router = (function(_super) {
      __extends(Router, _super);

      function Router() {
        return Router.__super__.constructor.apply(this, arguments);
      }

      Router.prototype.routes = {
        '': 'homepage',
        'about': 'about',
        ':project': 'project'
      };

      Router.prototype.$loader = $('.loader');

      Router.prototype.navigation = null;

      Router.prototype.projects = ['mediadata', 'jperriere-2014', 'dreamcatcher', 'jperriere-2013', 'mumories', 'game-of-thrones', 'disney'];

      Router.prototype.initialize = function() {
        this.setNavigation();
        return this.addEventListeners();
      };

      Router.prototype.addEventListeners = function() {
        return $(window).on('resize', this.onResize);
      };

      Router.prototype.homepage = function(about) {
        if (about == null) {
          about = false;
        }
        console.log(about, 'yo');
        if (love.views.homepage === null) {
          return require(['views/homepage'], (function(_this) {
            return function(View) {
              return love.views.homepage = new View({
                about: about
              });
            };
          })(this));
        } else {
          return love.views.homepage.render({
            about: about
          });
        }
      };

      Router.prototype.project = function(project) {
        console.log(project);
        if (!love.views.projects[project]) {
          return require(['views/projects/' + project], (function(_this) {
            return function(View) {
              return love.views.projects[project] = new View();
            };
          })(this));
        } else {
          return love.views.projects[project].render();
        }
      };

      Router.prototype.about = function() {
        return this.homepage(true);
      };

      Router.prototype.onResize = function() {
        return console.log('onResize');
      };

      Router.prototype.setNavigation = function() {
        console.log('yo');
        return this.navigation = new Navigation();
      };

      Router.prototype.unlockScroll = function() {
        console.log('unlockScroll');
        return $('html, body').css({
          'overflow': 'visible',
          'height': 'auto'
        });
      };

      Router.prototype.setLoader = function(project) {
        console.log(project, 'yo');
        this.$loader.data('project', project);
        this.$loader.html($('.homepage').find('[data-project=' + project + ']').html());
        return this.$loader.addClass('is-visible');
      };

      return Router;

    })(Backbone.Router);
  });

}).call(this);
