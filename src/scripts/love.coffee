define [
	'jquery' 
	'underscore'
	'backbone'
], ($, _, Backbone) ->
	'use strict'
	love = 
		router: null
		views: 
			homepage: null
			projects: {}
		initialize: () ->
			require ['routers/router'], (Router) =>
				@router = new Router()
				Backbone.history.start
					pushState: true
					root: 'laureboutmy/'