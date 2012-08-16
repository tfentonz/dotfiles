// remove any password input onpaste events
$('input:password[onpaste]').each(function() {
  $(this).attr('onpaste', '');
});
