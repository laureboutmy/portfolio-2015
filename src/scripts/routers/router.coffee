define [
	'love',
	'views/navigation'
], (love, Navigation) ->
	'use strict'
	class Router extends Backbone.Router
		routes:
			'': 'homepage'
			'about': 'about'
			':project': 'project'
		$loader: $('.loader')
		navigation: null
		projects: ['mediadata', 'jperriere-2014', 'dreamcatcher', 'jperriere-2013', 'mumories', 'game-of-thrones', 'disney']
		initialize: () ->
			@setNavigation()
			@addEventListeners()

		addEventListeners: () ->
			$(window).on('resize', @onResize)

		homepage: (about = false) ->
			console.log(about, 'yo')
			if love.views.homepage is null
				require ['views/homepage'], (View) => 
					love.views.homepage = new View({about})
			else love.views.homepage.render({about})


		project: (project) ->
			console.log project
			if !love.views.projects[project]
				require ['views/projects/' + project], (View) =>
					love.views.projects[project] = new View()
			else love.views.projects[project].render()

		about: () ->
			@homepage(true)

		onResize: () ->
			console.log 'onResize'

		setNavigation: () ->
			console.log('yo')
			@navigation = new Navigation()

		unlockScroll: () ->
			console.log 'unlockScroll'
			$('html, body').css
				'overflow': 'visible' 
				'height': 'auto'
		
		setLoader: (project) ->
			console.log(project, 'yo')
			@$loader.data('project', project)
			@$loader.html $('.homepage').find('[data-project=' + project + ']').html()
			@$loader.addClass('is-visible');
