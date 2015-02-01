'use strict'
require.config
  shim: 
  	underscore:
  		exports: '_'
  	backbone:
  		deps: ['jquery', 'underscore']
  		exports: 'Backbone'
  paths:
    jquery: 		'libraries/jquery-1.11.1.min'
    backbone: 	'libraries/backbone.min'
    underscore: 'libraries/underscore.min'
    text: 			'libraries/require-text.min'

define ['love'], (love) ->
	love.initialize()
