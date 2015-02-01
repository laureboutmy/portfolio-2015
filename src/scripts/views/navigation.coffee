define [
	'love'
], (love) ->
	'use strict'
	class NavigationView extends Backbone.View
		el: '.navigation'
		header: null
		events: 
			'mouseleave' : 'onMouseout'
			'click .js-expandNavigation': 'onClick'

		initialize: () ->
			console.log 'initialize'
			@render()
			@addEventListeners()

		addEventListeners: () ->
			@$el.on('click', '[data-project]', @onProjectClick)
			@$el.on('click', '.about', @onAboutClick)

		onClick: (e) ->
			if !@$el.hasClass('is-expanded') then @$el.addClass('is-expanded')
			else love.router.navigate('', {trigger: true})

		onMouseout: () ->
			if !@$el.hasClass('js-atBottom')	
				@$el.removeClass('is-expanded')
				@$el.scrollTop(0)

		onProjectClick: (e) ->
			e.preventDefault()
			project = $(@).data('project')
			$('html, body').animate
				scrollTop: 0
			, 
				duration: 200, 
				specialEasing: 'cubic-bezier(0.165, 0.84, 0.44, 1)'
				complete: () ->
					love.router.navigate(project, {trigger: true})

		onAboutClick: (e) ->
			e.preventDefault()
			love.router.navigate('about', {trigger: true})

	
