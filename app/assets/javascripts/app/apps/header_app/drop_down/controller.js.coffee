@Reqspec.module "HeaderApp.DropDown", (DropDown, App, Backbone, Marionette, $, _) ->

  DropDown.Controller =

    dropDown: ->
      links = App.request "header:entities:sub"

      headerView = @getHeaderView links
      App.request('header:layout').subRegion.show headerView

    getHeaderView: (links) ->
      new DropDown.Header
        collection: links
