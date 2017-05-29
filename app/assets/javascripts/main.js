$(document).ready(function() {
  $("#slide_top .owl_banner").owlCarousel({
      navigation : true, // Show next and prev buttons
      slideSpeed : 300,
      paginationSpeed : 400,

      //Autoplay
      autoPlay : true,
      goToFirst : true,
      goToFirstSpeed : 1000,

      // Navigation
      navigation : false,
      navigationText : false,
      pagination : false,
      paginationNumbers: true,

      // Responsive 
      items : 1, 
      itemsDesktop : false,
      itemsDesktopSmall : false,
      itemsTablet: false,
      itemsMobile : false
 
  });
  $("#wallet .owl-carousel").owlCarousel({
      //Basic Speeds
      slideSpeed : 200,
      paginationSpeed : 800,
   
      //Autoplay
      autoPlay : false,
      goToFirst : true,
      goToFirstSpeed : 1000,
   
      // Navigation
      navigation : false,
      navigationText : false,
      pagination : false,
      paginationNumbers: true,
   
      // Responsive 
      responsive: true,
      items : 5,
      itemsDesktop : [1199,5],
      itemsDesktopSmall : [980,5],
      itemsTablet: [768,5],
      itemsMobile : [479,4]
    });
});
$(function() {
      $('nav#menu-left').mmenu();
  });

/*$(document).ready(function(){
      $('._btn').click(function(){
            $('.btn-menu').addClass('active');
      });
});*/
/*$(document).ready(function(){
      $('#myTabs a').click(function (e) {
        e.preventDefault()
        $(this).tab('show')
      })
});*/
