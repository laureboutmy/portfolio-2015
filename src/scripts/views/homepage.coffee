define [
	'love',
	'text!templates/homepage.html'
], (love, template) ->
	'use strict'
	class HomepageView extends Backbone.View
		el: '.main-homepage'
		template: _.template(template)
		initialize: (options) ->
			
			@render(options)

		destroy: () ->
			console.log 'destroy'

		addEventListeners: () ->
			@$el.on('click', '[data-project]', @onClick)

		render: (options) ->
			@$el.html(@template())
			@addEventListeners()
			if options.about is true
				$('html, body').animate
					scrollTop: @$el.find('.about').offset().top
				, 
					duration: 200, 
					specialEasing: 'cubic-bezier(0.165, 0.84, 0.44, 1)'
			else 
				$('html, body').animate
					scrollTop: 0
				, 
					duration: 200, 
					specialEasing: 'cubic-bezier(0.165, 0.84, 0.44, 1)'
			return @

		lockScroll: () ->
			console.log('yoooooo')
			
			
		onClick: (e) ->
			e.preventDefault();
			$this = $(@)
			$this.parent().height($(window).height())
			$this.addClass('is-extended').height($(window).height())
			$('html, body').animate
				scrollTop: $this.offset().top
			,
				duration: 200, 
				specialEasing: 'cubic-bezier(0.165, 0.84, 0.44, 1)'
				complete: () ->

					$('html, body').css
						'overflow': 'hidden' 
						'height': '100%'
					$this.addClass('is-fixed')
					window.setTimeout () ->
						love.router.navigate($this.data('project'), {trigger: true})
					, 300
					