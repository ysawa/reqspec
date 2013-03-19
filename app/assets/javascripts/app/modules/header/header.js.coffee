@Reqspec.module "Header", (Header, App, Backbone, Marionette, $, _) ->
  @startWithParent = false

  API =
    list: ->
      Header.List.Controller.list()

  Header.on "start", ->
    API.list()
