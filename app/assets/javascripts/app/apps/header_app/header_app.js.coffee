@Reqspec.module "HeaderApp", (HeaderApp, App, Backbone, Marionette, $, _) ->
  @startWithParent = false

  API =
    layout: ->
      HeaderApp.Layout.Controller.layout()
    list: ->
      HeaderApp.List.Controller.list()
    dropDown: ->
      HeaderApp.DropDown.Controller.dropDown()

  HeaderApp.on "start", ->
    API.layout()
    API.list()
    API.dropDown()
