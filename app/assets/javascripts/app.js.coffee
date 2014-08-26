(($) ->
  class CG
    constructor: ->
      $ this.init
    init: =>
      this.menu.init()
      this.built.init()
      this.contactForm.init()

  window.cg = new CG
)(jQuery)

(($, app) ->
  class ContactForm
    selector: '#contact-form'
    init: =>
      this.form = $ this.selector
      this.sendLink = this.form.find 'a'
      this.sendLink.click this.submit
    submit: =>
      this.form.submit()

  app.contactForm = new ContactForm
      
)(jQuery, cg)
