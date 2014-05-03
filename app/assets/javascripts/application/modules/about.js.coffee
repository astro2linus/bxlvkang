@module "App", ->

  @About =

    initialize: ->
      # Set up commonly used elements.
      @$layout = $(".layout--about")
      @$navigation = $(".nav--about")
      @$window = $(window)

      # Initializers
      @initializeNavState()
      @initializeScrollAnimations()

    initializeNavState: ->
      # Add active state to menu items when section is visible.
      $sections = @$layout.find(".section")

      @$window.scroll ->
        activeClass = "is-active"
        windowScroll = $(window).scrollTop()
        $nav = $(".nav--about")
        $aboutNav = $(".nav--about nav")
        $content = $(".layout--about .content")

        if windowScroll > ($content.outerHeight() - $aboutNav.outerHeight())
          $aboutNav.addClass("is-aligned-bottom")
        else
          $aboutNav.removeClass("is-aligned-bottom")

        if windowScroll >= 200
          $sections.each (index) ->
            if $(this).position().top <= windowScroll - 40
              $nav.find(".#{activeClass}").removeClass(activeClass)
              $nav.find("a").eq(index).addClass(activeClass)
        else
          $nav.find(".#{activeClass}").removeClass(activeClass)
          $nav.find("a:first").addClass(activeClass)

      .scroll()

    initializeScrollAnimations: ->
      # Smooth scrolling when navigation links are clicked.
      @$navigation.find("a").on "click", (e) ->
        # e.preventDefault needed to prevent animation flicker.
        # Handling url update with pushState.
        e.preventDefault()
        anchor = $(this).attr('href')
        history.pushState({}, '', anchor)
        $.scrollTo("#{anchor}", 250)



$ ->
  if $("body.about").length
    App.About.initialize()
