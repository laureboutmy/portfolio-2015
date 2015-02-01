define [
	'views/project'
	'views/slider'
	'text!templates/game-of-thrones.html'
], (ProjectView, SliderView, template) ->
	'use strict'
	class GameOfThronesView extends ProjectView
		template: _.template(template)
		render: () ->

			@$el.html(@template())
			@initializeSlider()
			@$el.find('article').addClass('is-visible')
			return @
		
		initializeSlider: (slider) ->
			_.each $('.slider'), (slider) ->
				new SliderView({el: slider})
