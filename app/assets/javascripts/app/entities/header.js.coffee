@Reqspec.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

  class Entities.Header extends Entities.Model

  class Entities.HeaderCollection extends Entities.Collection
    model: Entities.Header

  API =
    getMain: ->
      new Entities.HeaderCollection [
        { name: "Products", url: Routes.products_path(), active: false }
      ]
    getSub: ->
      new Entities.HeaderCollection [
        { name: "Logout", url: Routes.destroy_user_session_path(), active: false, options: { 'data-method': 'delete', external: true } }
      ]

  App.reqres.addHandler "header:entities:main", ->
    API.getMain()

  App.reqres.addHandler "header:entities:sub", ->
    API.getSub()
