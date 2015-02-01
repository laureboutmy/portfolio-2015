define [], () ->
	'use strict'
	class SliderView extends Backbone.View
		el: null
		$images: null
		$navigation: null
		$wrapper: null
		width: 0
		events:
			'click .slider-images li': 'onClick'
			'click .slider-navigation li': 'onClick'

		initialize: () -> 
			@$images = @$el.find('.slider-images li')
			@$wrapper = @$el.find('.slider-wrapper')
			@$navigation = @$el.find('.slider-navigation ul li')
			@setSlider()

		setSlider: () ->
			@width = 0

			_.each @$images, (image, index) =>
				@width += $(image).width() + 40

			@$wrapper.width(@width)
			$image = @$images.filter('.active')
			@moveWrapper($image.width(), $image.position().left)

		onClick: (e) ->
			$el = $(e.currentTarget)
			@$images.removeClass('active')
			$image = @$images.eq($el.index())
			$image.addClass('active')
			@$navigation.removeClass('active')
			@$navigation.eq($el.index()).addClass('active')
			@moveWrapper($image.width(), $image.position().left)

		moveWrapper: (w, p) ->
			@$wrapper.offset({left: ($(window).width() - w - 40) / 2 - p}) 


