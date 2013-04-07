@Reqspec.module "HeaderApp.List", (List, App, Backbone, Marionette, $, _) ->

  List.Controller =

    list: ->
      links = App.request "header:entities:main"

      headerView = @getHeaderView links
      App.request('header:layout').mainRegion.show headerView

    getHeaderView: (links) ->
      new List.Header
        collection: links
