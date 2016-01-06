#analyze page checkbox toggle ================================================================================
do ->
  $('[type="checkbox"]').click ->
    $('.custom_toggle_buttons').toggleClass('custom_toggle_buttons_visible')