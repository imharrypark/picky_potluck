$(document).ready(function () {
  $('.result-recipe').click(function(event) {
    $('.selected').removeClass("selected");
    $event = $(event.target);
    $event.closest('.result-recipe').toggleClass("selected");
    $image_url = $event.find("img").attr("src");
    $('#claimed_dish_photo_url').val($image_url);
  })

  //Populate form with information from selected div


  $(".owl-carousel").owlCarousel();
})