$(document).on('turbolinks:load', function(){
  $("#caesars").click(function(e){
    e.preventDefault();
    var form = $("#caesars_form");
    $.ajax({
      method: form.attr('method'),
      url: form.attr('action'),
      data: form.serialize()
    }).done(function(response){
      $("#caesar_result").html(response.text);
    });
  });

  $("#xors").click(function(e){
    e.preventDefault();
    var form = $("#xors_form");
    $.ajax({
      method: form.attr('method'),
      url: form.attr('action'),
      data: form.serialize()
    }).done(function(response){
      $("#xor_result").html(response.text);
    });
  });
});