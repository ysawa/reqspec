@Reqspec.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

  class Entities.Header extends Entities.Model

  class Entities.HeaderCollection extends Entities.Collection
    model: Entities.Header

  API =
    getHeader: ->
      new Entities.HeaderCollection [
        { name: "Users", url: Routes.root_path(), active: false }
        { name: "Projects", url: Routes.root_path(), active: false }
        { name: "Products", url: Routes.products_path(), active: false }
        { name: "Requirements", url: Routes.root_path(), active: false }
        { name: "Specs", url: Routes.root_path(), active: false }
      ]

  App.reqres.addHandler "header:entities", ->
    API.getHeader()
