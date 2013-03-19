@Reqspec.module "Header.List", (List, App, Backbone, Marionette, $, _) ->

  List.Controller =

    list: ->
      links = new Backbone.Collection

      headerView = @getHeaderView links
      App.headerRegion.show headerView

    getHeaderView: (links) ->
      new List.Header
        collection: links
