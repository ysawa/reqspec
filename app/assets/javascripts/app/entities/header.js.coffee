@Reqspec.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

  class Entities.Header extends Entities.Model

  class Entities.HeaderCollection extends Entities.Collection
    model: Entities.Header

  API =
    getHeader: ->
      new Entities.HeaderCollection [
        { name: "Users", url: Routes.root_path() }
        { name: "Projects", url: Routes.root_path() }
        { name: "Requirements", url: Routes.root_path() }
        { name: "Specs", url: Routes.root_path() }
      ]

  App.reqres.addHandler "header:entities", ->
    API.getHeader()
