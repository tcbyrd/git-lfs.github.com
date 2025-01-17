$ ->
  os = window.session.browser.os.toLowerCase()
  if os == 'mac'
    $('.js-mac').removeClass('visually-hidden')
  else if os == 'linux'
    $('.js-linux').removeClass('visually-hidden')
  else
    $('.js-windows').removeClass('visually-hidden')

# Event tracking for clicks on "Download" or Sign Up"
$(document).on 'click', (e) ->
  gaParams = $(e.target).closest('[data-ga-params]').attr('data-ga-params')
  return unless window.ga && gaParams

  gaParams = gaParams.split(',')
  window.ga('send', 'event', 'Home Page', gaParams[0], gaParams[1])
  return
