@Reqspec.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

  class Entities.User extends Entities.Model

  API =
    setCurrentUser: (currentUser) ->
      new Entities.User currentUser

  App.reqres.addHandler "set:current:user", (currentUser) ->
    API.setCurrentUser currentUser
