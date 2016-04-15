$(function(){
  $(document).on('page:fetch', function(){
    $("#page_loading").show('fast');
  });
  $(document).on('page:change', function(){
    $('#page_loading').hide('fast');
  });
});
