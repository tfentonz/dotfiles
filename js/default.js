// remove onpaste event from password inputs
$('input:password[onpaste]').each(function() {
  $(this).attr('onpaste', '');
});
