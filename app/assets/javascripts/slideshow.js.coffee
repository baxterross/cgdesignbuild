(($, app) ->
  
  class Slideshow
    constructor: (slideshow) ->
      @selector = slideshow
    init: =>
      @slideshow = $ @selector
      @slides = @slideshow.find 'img'
      @first = 0
      @last = @slides.length - 1
      @current = @first
      @show @first

      previous = @slideshow.find '.arrow.previous'
      previous.click @previous
      next = @slideshow.find '.arrow.next'
      next.click @next

      if @slideshow[0] && @slideshow[0].getAttribute('autoplay') == 'true'
        setInterval @next, 3000
    previous: (e) =>
      if @current == @first
        @show @last
      else
        @show @current - 1
    next: (e) =>
      if @current == @last
        @show @first
      else
        @show @current + 1
    show: (i) =>
      if i != @current
        $(@slides[@current]).removeClass 'visible'
      $(@slides[i]).addClass 'visible'
      @current = i
  
  app.slideshow = new Slideshow '.slideshow'

)(jQuery, cg)
