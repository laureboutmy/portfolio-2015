define [
	'love'
	'views/project'
	'views/slider'
	'text!templates/mediadata.html'

], (L, ProjectView, SliderView, template) ->
	'use strict'
	class MediadataView extends ProjectView
		template: _.template(template)
		render: () ->
			$('.navigation').removeClass('js-atBottom')
			@$el.html(@template())
			@addEventListeners()
			@initializeSlider()
			@$el.find('article').addClass('is-visible')
			@$el.addClass('is-visible')
			L.router.unlockScroll()
			
			return @
		
		addEventListeners: () ->
			$(window).on('scroll', @atBottom)
