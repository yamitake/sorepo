$(function(){
  $(document).on('page:fetch', function(){
    if(!$('.loader').length){
      $('body').append('<div class="loader" style="display:none;"><div class="loader-ring-light" /></div>');
    }
    $(".loader").show('fast');
  });
  $(document).on('page:change', function(){
    $('.loader').hide('fast');
  });
});
