$(document).ready(function() {
  $(".expense-category").on("click", function(e) {
    $(".expense-category").removeClass('selected-border');
    $(this).addClass('selected-border');
    var selected_category = $(this).attr('id');
    console.log(selected_category);
    $('#expense_category').val(selected_category);
  });
});
