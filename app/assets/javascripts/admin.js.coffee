#= require jquery
#= require jquery_ujs
#= require turbolinks
#= require foundation

$topbar = $ 'nav.top-bar'
$footer = $ 'body > footer'
$container = $('article#container').css( "min-height", $(window).height() - ( $topbar.outerHeight() + $footer.outerHeight() ) )

$(document).foundation()
