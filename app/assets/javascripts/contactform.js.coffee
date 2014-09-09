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
