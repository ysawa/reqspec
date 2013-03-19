@Reqspec.module "Header.List", (List, App, Backbone, Marionette, $, _) ->

  List.Controller =

    list: ->
      links = App.request "header:entities"

      headerView = @getHeaderView links
      App.headerRegion.show headerView

    getHeaderView: (links) ->
      new List.Header
        collection: links
