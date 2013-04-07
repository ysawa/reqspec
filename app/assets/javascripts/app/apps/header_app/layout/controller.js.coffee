@Reqspec.module "HeaderApp.Layout", (Layout, App, Backbone, Marionette, $, _) ->

  Layout.Controller =

    layout: ->
      headerView = @getHeaderView()
      App.reqres.addHandler "header:layout", ->
        headerView
      App.headerRegion.show headerView

    getHeaderView:  ->
      new Layout.Header
