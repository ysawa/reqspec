@Reqspec.module "HeaderApp", (HeaderApp, App, Backbone, Marionette, $, _) ->
  @startWithParent = false

  API =
    list: ->
      HeaderApp.List.Controller.list()
    dropDown: ->
      HeaderApp.DropDown.Controller.dropDown()

  HeaderApp.on "start", ->
    API.list()
    API.dropDown()
