define [
	'views/slider'
], (SliderView) ->
	'use strict'
	class ProjectView extends Backbone.View
		el: '.main'
		initialize: () -> 
			@render()
			

		destroy: () ->
			console.log 'destroy'

		render: () ->
			@$el.html(@template())
			@$el.find('article').addClass('is-visible')
			@$el.addClass('is-visible')
			return @

		atBottom: () ->
			if $(window).scrollTop() > $('article').height() - $(window).height() - 100
				$('.navigation:not(.is-expanded)').addClass('is-expanded js-atBottom')
			else 
				$('.navigation.js-atBottom').removeClass('is-expanded js-atBottom')
				$('.navigation').scrollTop(0)

		initializeSlider: (slider) ->
			_.each $('.slider'), (slider) ->
				new SliderView({el: slider})