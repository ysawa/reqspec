@Reqspec.module "HeaderApp", (HeaderApp, App, Backbone, Marionette, $, _) ->
  @startWithParent = false

  API =
    layout: ->
      HeaderApp.Layout.Controller.layout()
    list: ->
      HeaderApp.List.Controller.list()
    dropdown: ->
      HeaderApp.Dropdown.Controller.dropdown()

  HeaderApp.on "start", ->
    API.layout()
    API.list()
    API.dropdown()
