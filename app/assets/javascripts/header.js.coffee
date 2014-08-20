(($, app) ->
  
  class Menu
    selector: '.menu-item'
    constructor: ->
    init: =>
      menuItems = $(this.selector)
      menuItems.find('ul').bind
        open: this.open
        close: this.close
      menuItems.mouseenter this.mouseenter
      menuItems.mouseleave this.mouseleave
    mouseenter: (e) =>
      $(e.currentTarget).find('ul').trigger('open');
    mouseleave: (e) =>
      $(e.currentTarget).find('ul').trigger('close');
    open: (e) =>
      $(e.currentTarget).slideDown()
    close: (e) =>
      $(e.currentTarget).stop(true, true).slideUp()
  
  app.menu = new Menu

)(jQuery, cg)
