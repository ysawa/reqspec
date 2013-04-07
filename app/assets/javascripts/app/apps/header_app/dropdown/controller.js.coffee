@Reqspec.module "HeaderApp.Dropdown", (Dropdown, App, Backbone, Marionette, $, _) ->

  Dropdown.Controller =

    dropdown: ->
      @layout = @getLayoutView()
      App.request('header:layout').subRegion.show @layout

      @showToggleView()
      links = App.request "header:entities:sub"
      @showMenuView(links)

    getLayoutView: ->
      new Dropdown.Layout

    showToggleView: ->
      view = new Dropdown.Toggle
      @layout.toggleRegion.show view

    showMenuView: (links) ->
      view = new Dropdown.Menu
        collection: links
      @layout.menuRegion.show view
