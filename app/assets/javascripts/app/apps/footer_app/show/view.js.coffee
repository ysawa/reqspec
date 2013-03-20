@Reqspec.module "FooterApp.Show", (Show, App, Backbone, Marionette, $, _) ->

  class Show.Footer extends App.Views.ItemView
    template: "footer_app/show/views/footer"
