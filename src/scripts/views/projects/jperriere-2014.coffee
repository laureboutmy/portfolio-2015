define [
	'views/project'
	'text!templates/jperriere-2014.html'
], (ProjectView, template) ->
	'use strict'
	class JPerriere2014View extends ProjectView
		template: _.template(template)
		render: () ->
			@$el.html(@template())
			@$el.find('article').addClass('is-visible')
			return @
		