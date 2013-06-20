#= require jquery
#= require jquery_ujs
#= require turbolinks
#= require bootstrap
#= require redactor
$ ->
  $('.redactor').redactor({lang: 'pt_br', path: location.origin + '/assets'})
