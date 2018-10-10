//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require highlight.pack
//= require ciphers

$(document).on('turbolinks:load', function(){
  hljs.initHighlighting.called = false;
  hljs.initHighlighting();
});