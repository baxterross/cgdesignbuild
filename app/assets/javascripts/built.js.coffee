console.log 'hello'
(($, app) ->
  
  class Built
    selector_thumb: '#built .thumbs img'
    selector_main: '#built .gallery img'
    constructor: ->
    init: =>
      thumbs = $(this.selector_thumb)
      menuItems.bind
        click: this.click
    click: (e) =>
      source = $(e.currentTarget).attr 'src'
      $(this.selector_main).src source
  
  app.built = new Built

)(jQuery, cg)
