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
        { name: "Logout", url: Routes.destroy_user_session_path(), active: false, options: { 'data-method': 'delete', external: true } }
      ]

  App.reqres.addHandler "header:entities", ->
    API.getHeader()
