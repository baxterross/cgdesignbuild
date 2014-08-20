(function() {
  var __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  console(log('cg'));

  (function($) {
    var CG;
    CG = (function() {
      function CG() {
        this.init = __bind(this.init, this);
        $(this.init);
      }

      CG.prototype.init = function() {
        this.menu.init();
        return this.built.init();
      };

      return CG;

    })();
    return window.cg = new CG;
  })(jQuery);

}).call(this);
(function() {
  var __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  console.log('hello');

  (function($, app) {
    var Built;
    Built = (function() {
      Built.prototype.selector_thumb = '#built .thumbs img';

      Built.prototype.selector_main = '#built .gallery img';

      function Built() {
        this.click = __bind(this.click, this);
        this.init = __bind(this.init, this);
      }

      Built.prototype.init = function() {
        var thumbs;
        thumbs = $(this.selector_thumb);
        return menuItems.bind({
          click: this.click
        });
      };

      Built.prototype.click = function(e) {
        var source;
        source = $(e.currentTarget).attr('src');
        return $(this.selector_main).src(source);
      };

      return Built;

    })();
    return app.built = new Built;
  })(jQuery, cg);

}).call(this);
(function() {
  var __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  console.log('cg');

  (function($) {
    var CG;
    CG = (function() {
      function CG() {
        this.init = __bind(this.init, this);
        $(this.init);
      }

      CG.prototype.init = function() {
        this.menu.init();
        return this.built.init();
      };

      return CG;

    })();
    return window.cg = new CG;
  })(jQuery);

}).call(this);
(function() {
  var __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  console.log('header');

  (function($, app) {
    var Menu;
    Menu = (function() {
      Menu.prototype.selector = '.menu-item';

      function Menu() {
        this.close = __bind(this.close, this);
        this.open = __bind(this.open, this);
        this.mouseleave = __bind(this.mouseleave, this);
        this.mouseenter = __bind(this.mouseenter, this);
        this.init = __bind(this.init, this);
      }

      Menu.prototype.init = function() {
        var menuItems;
        menuItems = $(this.selector);
        menuItems.find('ul').bind({
          open: this.open,
          close: this.close
        });
        menuItems.mouseenter(this.mouseenter);
        return menuItems.mouseleave(this.mouseleave);
      };

      Menu.prototype.mouseenter = function(e) {
        return $(e.currentTarget).find('ul').trigger('open');
      };

      Menu.prototype.mouseleave = function(e) {
        return $(e.currentTarget).find('ul').trigger('close');
      };

      Menu.prototype.open = function(e) {
        return $(e.currentTarget).slideDown();
      };

      Menu.prototype.close = function(e) {
        return $(e.currentTarget).stop(true, true).slideUp();
      };

      return Menu;

    })();
    return app.menu = new Menu;
  })(jQuery, cg);

}).call(this);
// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//




;
