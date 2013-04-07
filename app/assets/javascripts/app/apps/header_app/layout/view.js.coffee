@Reqspec.module "HeaderApp.Layout", (Layout, App, Backbone, Marionette, $, _) ->

  class Layout.Header extends App.Views.Layout
    template: "header_app/layout/templates/layout"
    regions:
      mainRegion: "#header-main-region"
      subRegion: "#header-sub-region"
