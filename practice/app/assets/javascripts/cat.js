$(document).ready(function() {

  $('.new_cat').on('submit', function(event) {
    event.preventDefault();

    var source = $('#cat-new').html();
    var template = Handlebars.compile(source);
    var url = $(this).attr('action');
    var data = $(this).serialize();
    var request = $.ajax({
      type: 'post',
      url: url,
      data: data,
      dataType: 'json'
    });

    request.done(function(data) {
      // var context = {};
      // context.data = data;
      $('#this_one').append(template(data)); //handlebars way
    });
    request.fail(function(data) {
      $('.new_cat').prepend('<span id="error">You fucked up</span>');
    });
  });

});