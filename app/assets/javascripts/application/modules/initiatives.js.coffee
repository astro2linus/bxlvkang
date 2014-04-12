@module "App", ->
  @module "Initiative", ->

    @Cards =

      initialize: ->
        $cards = $(".initiative--card header")
        $cards.dotdotdot({watch: 'window'}) if $cards.length


# dotdotdot works better on load
$(window).load ->
  App.Initiative.Cards.initialize()
