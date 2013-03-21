@Reqspec.module "Entities", (Entities, App, Backbone, Marionette, $, _) ->

  class Entities.Pager extends Backbone.Paginator.requestPager
    paginator_core:
      type: 'GET'
      dataType: 'json'
      url: ->
        @url

    paginator_ui:
      firstPage: 1
      currentPage: 1
      perPage: 25
      totalPages: 10
    server_api:
      page: ->
        @currentPage
