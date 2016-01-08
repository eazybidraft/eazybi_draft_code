#analyze page checkbox toggle ================================================================================
do ->
  checkbox = $('[type="checkbox"]')
  check_all = $('.check_all')

  checkbox.click ->
    if checkbox.not(':checked')
      $(this).closest('.analyze_cube').find('.custom_invisible').removeClass('custom_visible')
    if checkbox.is(':checked')
      $(this).closest('.analyze_cube').find('.custom_invisible').addClass('custom_visible')

#  check_all.not(':checked').click ->
#    checkbox.prop("checked", true)


#show/hide reports ================================================================================
do ->
  $('.hide_reports').click ->
    $(this).css({'display': 'none'})
    $(this).closest('.analyze_cube').children('.cube_body').fadeOut('fast')
    $(this).parent().children('.show_reports').css({'display': 'inline-block'})

  $('.show_reports').click ->
    $(this).css({'display': 'none'})
    $(this).closest('.analyze_cube').children('.cube_body').fadeIn('fast')
    $(this).parent().children('.hide_reports').css({'display': 'inline-block'})