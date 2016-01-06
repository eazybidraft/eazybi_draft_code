#analyze page checkbox toggle ================================================================================
do ->
  $('[type="checkbox"]').click ->
    $('.custom_invisible').toggleClass('custom_visible')