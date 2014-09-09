(($) ->
  class CG
    constructor: ->
      $ this.init
    init: =>
      this.slideshow.init()
      this.menu.init()
      this.built.init()
      this.contactForm.init()

  window.cg = new CG
)(jQuery)
