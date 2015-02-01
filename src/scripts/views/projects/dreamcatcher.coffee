define [
	'views/project'
	'text!templates/dreamcatcher.html'
], (ProjectView, template) ->
	'use strict'
	class DreamcatcherView extends ProjectView
		template: _.template(template)
		render: () ->

			@$el.html(@template())
			# @$el.find('article').addClass('is-visible')
			@setCover()
			return @
		