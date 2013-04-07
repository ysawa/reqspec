@Reqspec.module "Views", (Views, App, Backbone, Marionette, $, _) ->

  _.extend Marionette.View::,

    templateHelpers: ->

      linkTo: (name, url, options = {}) ->
        _.defaults options,
          external: false

        url = "#" + url unless options.external

        delete(options.external)
        attributes = ''
        _.each options, (value, key) ->
          attributes += " #{key}=\"#{value}\""

        "<a href='#{url}'#{attributes}>#{escape(name)}</a>"

      currentUser:
        App.request("get:current:user").toJSON()
