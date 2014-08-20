(($) ->
  class CG
    constructor: ->
      $ this.init
    init: =>
      this.menu.init()
      this.built.init()

  window.cg = new CG
)(jQuery)
