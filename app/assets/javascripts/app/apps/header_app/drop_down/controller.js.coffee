@Reqspec.module "HeaderApp.DropDown", (DropDown, App, Backbone, Marionette, $, _) ->

  DropDown.Controller =

    dropDown: ->
      links = App.request "header:entities"

      headerView = @getHeaderView links
      App.subNavRegion.show headerView

    getHeaderView: (links) ->
      new DropDown.Header
        collection: links
