$(document).ready(function() {
  $(".category").on("click", function() {
    $(".category").removeClass('selected-border');
    $(this).addClass('selected-border');
    var selected_category = $(this).attr('id');
    console.log(selected_category);
    $('#skill_category').val(selected_category);
  });
});
