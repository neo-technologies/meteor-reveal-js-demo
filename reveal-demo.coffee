if Meteor.isClient

  Router.configure autoRender: false

  Router.map ->
    @route 'home', path: '/'
    @route 'barebones'

  Template.reveal.rendered = ->
    Reveal.initialize()
    Reveal.slide() # Go to first slide

  Template.menu.rendered = ->
    $('.ui.dropdown') .dropdown()
    Router.load -> # Change theme/transition using links params (eg. <a href="?theme=...">)
      Reveal.configure theme: theme if theme=this.params.theme
      Reveal.configure transition: transition if transition=this.params.transition

  Template.transitionSelect.events
    'click .item': (event) ->
      transition = $(event.currentTarget).data 'value'
      Reveal.configure transition: transition

  Template.themeSelect.events
    'click .item': (event) ->
      theme = $(event.currentTarget).data 'value'
      Reveal.configure theme: theme
