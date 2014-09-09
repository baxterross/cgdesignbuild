(function() {
  var __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  (function($) {
    var CG;
    CG = (function() {
      function CG() {
        this.init = __bind(this.init, this);
        $(this.init);
      }

      CG.prototype.init = function() {
        this.slideshow.init();
        this.menu.init();
        this.built.init();
        return this.contactForm.init();
      };

      return CG;

    })();
    return window.cg = new CG;
  })(jQuery);

}).call(this);
(function() {
  var __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  (function($, app) {
    var ContactForm;
    ContactForm = (function() {
      function ContactForm() {
        this.submit = __bind(this.submit, this);
        this.init = __bind(this.init, this);
      }

      ContactForm.prototype.selector = '#contact-form';

      ContactForm.prototype.init = function() {
        this.form = $(this.selector);
        this.sendLink = this.form.find('a');
        return this.sendLink.click(this.submit);
      };

      ContactForm.prototype.submit = function() {
        return this.form.submit();
      };

      return ContactForm;

    })();
    return app.contactForm = new ContactForm;
  })(jQuery, cg);

}).call(this);
(function() {
  var __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

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
        this.main = $(this.selector_main);
        thumbs = $(this.selector_thumb);
        return thumbs.bind({
          click: this.click
        });
      };

      Built.prototype.click = function(e) {
        var source;
        source = $(e.currentTarget).attr('src');
        return this.main.attr('src', source);
      };

      return Built;

    })();
    return app.built = new Built;
  })(jQuery, cg);

}).call(this);
(function() {
  var __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

  (function($, app) {
    var Slideshow;
    Slideshow = (function() {
      function Slideshow(slideshow) {
        this.show = __bind(this.show, this);
        this.next = __bind(this.next, this);
        this.previous = __bind(this.previous, this);
        this.init = __bind(this.init, this);
        this.selector = slideshow;
      }

      Slideshow.prototype.init = function() {
        var next, previous;
        this.slideshow = $(this.selector);
        this.slides = this.slideshow.find('img');
        this.first = 0;
        this.last = this.slides.length - 1;
        this.current = this.first;
        this.show(this.first);
        previous = this.slideshow.find('.arrow.previous');
        previous.click(this.previous);
        next = this.slideshow.find('.arrow.next');
        return next.click(this.next);
      };

      Slideshow.prototype.previous = function(e) {
        if (this.current === this.first) {
          return this.show(this.last);
        } else {
          return this.show(this.current - 1);
        }
      };

      Slideshow.prototype.next = function(e) {
        if (this.current === this.last) {
          return this.show(this.first);
        } else {
          return this.show(this.current + 1);
        }
      };

      Slideshow.prototype.show = function(i) {
        if (i !== this.current) {
          $(this.slides[this.current]).removeClass('visible');
        }
        $(this.slides[i]).addClass('visible');
        return this.current = i;
      };

      return Slideshow;

    })();
    return app.slideshow = new Slideshow('.slideshow');
  })(jQuery, cg);

}).call(this);
(function() {
  var __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; };

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
