(($, app) ->
  
  class Built
    selector_thumb: '#built .thumbs img'
    selector_main: '#built .gallery img'
    constructor: ->
    init: =>
      @main = $(this.selector_main)
      thumbs = $(this.selector_thumb)
      thumbs.bind
        click: this.click
    click: (e) =>
      source = $(e.currentTarget).attr 'src'
      @main.attr 'src', source
  
  app.built = new Built

)(jQuery, cg)
