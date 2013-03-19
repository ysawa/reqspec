@Reqspec.module "Footer", (Footer, App, Backbone, Marionette, $, _) ->
  @startWithParent = false

  API =
    show: ->
      Footer.Show.Controller.showFooter()

  Footer.on "start", ->
    API.show()
