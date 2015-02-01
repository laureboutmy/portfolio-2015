define [
	'text!templates/about.html'
], (template) ->
	'use strict'
	class AboutView extends Backbone.View
		el: '.main'
		template: _.template(template)
		initialize: () -> 
			@render()

		destroy: () ->
			console.log 'destroy'

		render: () ->
			# $.ajax
			#   url: 'https://api.instagram.com/v1/users/1842277/media/recent/'
			#   data: 
			#   	count: 20
			#   	client_id: '6752109b463d49b3bdb285b849510d7c'
			#   success: (data) ->
			#   	console.log data
			#   	return
		
			@$el.html(@template())
			return @