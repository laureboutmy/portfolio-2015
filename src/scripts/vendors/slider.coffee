define [], () ->

  $.fn.slideIt = () ->
    console.log this 
  # slideIt = (elements) ->
    # Array.prototype.forEach.call elements, (el, i) ->
      # options = 
      #   images: el.querySelectorAll('.slider-images li')
      #   wrapper: el.querySelector('.slider-wrapper')
      #   navigation: el.querySelectorAll('.slider-navigation ul li')
      #   width: 0

      # Array.prototype.forEach.call options.images, (el, i) ->
      #   options.width += el.offsetWidth + 40

      # options.wrapper.style.width = options.width + 'px'

      # console.log el.querySelector('.slider-images .active').getBoundingClientRect()
      # image = el.querySelector('.slider-images .active')
      # console.log window.innerWidth, image.offsetWidth, image.getBoundingClientRect(), (window.innerWidth - image.offsetWidth - 40)/2 - image.getBoundingClientRect().left
      # options.wrapper.style.left = (window.innerWidth - image.offsetWidth - 40)/2 - image.getBoundingClientRect().left + 'px'


      
      # // var options = {
      # //   current: 0,
      # //   nav: el.querySelectorAll('nav li'),
      # //   main: el.parentNode.querySelectorAll('.slider > div ul li'),
      # //   length: null
      # // };

      # // options.length = options.main.length;

      # // var goToSlide = function(i){
      # //   if(i == options.current) return;

      # //   helpers.removeClass(options.nav[options.current], 'active');
      # //   helpers.removeClass(options.main[options.current], 'active');
      # //   options.current = i;
      # //   helpers.addClass(options.nav[options.current], 'active');
      # //   helpers.addClass(options.main[options.current], 'active');
      # // }

      # // var goToNextSlide = function(i){
      # //   helpers.removeClass(options.nav[options.current], 'active');
      # //   helpers.removeClass(options.main[options.current], 'active');
      # //   if(options.current == options.length - 1) options.current = 0;
      # //   else options.current++;
      # //   helpers.addClass(options.nav[options.current], 'active');
      # //   helpers.addClass(options.main[options.current], 'active');
      # // }

      # // Array.prototype.forEach.call(options.nav, function(el, i){
      # //   el.addEventListener('click', function(){ goToSlide(i) })
      # // });

      # // Array.prototype.forEach.call(options.main, function(el, i){
      # //   el.addEventListener('click', function(){ goToNextSlide(i) })
      # // });



  
