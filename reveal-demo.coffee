if Meteor.isClient
  Meteor.startup ->
    Reveal.initialize
      loop: true
      controls: false
      progress: false
      autoSlide: 5000
