$(document).ready(function() {
  $(".income-category").on("click", function(e) {
    $(".income-category").removeClass('selected-border');
    $(this).addClass('selected-border');
    var selected_category = $(this).attr('id');
    console.log(selected_category);
    $('#income_category').val(selected_category);
  });
});
