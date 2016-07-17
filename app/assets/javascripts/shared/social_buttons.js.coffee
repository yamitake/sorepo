ready = ->
  # Facebook
  loadFacebookSDK()
  bindFacebookEvents() unless window.fbEventsBound

  # Twitter
  loadTwitterSDK()
  bindTwitterEventHandlers() unless twttr_events_bound

  # Pocket
  loadPocketSDK()


$(document).ready(ready)
$(document).on('page:load', ready)

# ----------------------------------------- #
# Facebook
# ----------------------------------------- #
bindFacebookEvents = ->
  $(document)
    .on('page:fetch', saveFacebookRoot)
    .on('page:change', restoreFacebookRoot)
    .on('page:load', ->
      FB?.XFBML.parse()
    )
  @fbEventsBound = true

saveFacebookRoot = ->
  if $('#fb-root').length
    @fbRoot = $('#fb-root').detach()

restoreFacebookRoot = ->
  if @fbRoot?
    if $('#fb-root').length
      $('#fb-root').replaceWith @fbRoot
    else
      $('body').append @fbRoot

loadFacebookSDK = ->
  window.fbAsyncInit = initializeFacebookSDK
  $.getScript("//connect.facebook.net/ja_JP/sdk.js")

# TODO 設定
initializeFacebookSDK = ->
  FB.init
    appId     : '238970959482402'
    xfbml     : true
    version   : 'v2.6'

# ----------------------------------------- #
# Twitter
# ----------------------------------------- #
twttr_events_bound = false

bindTwitterEventHandlers = ->
  $(document).on 'page:load', renderTweetButtons
  twttr_events_bound = true
  console.log("hello");

renderTweetButtons = ->
  $('.twitter-share-button').each ->
    button = $(this)
    button.attr('data-url', document.location.href) unless button.data('url')?
    button.attr('data-text', document.title) unless button.data('text')?
  twttr.widgets.load()

loadTwitterSDK = ->
  $.getScript("//platform.twitter.com/widgets.js")

# ----------------------------------------- #
# Pocket
# ----------------------------------------- #

loadPocketSDK = ->
  $.getScript("https://widgets.getpocket.com/v1/j/btn.js?v=1")