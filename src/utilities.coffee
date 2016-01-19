ko = require 'knockout'
bluebird = require 'bluebird'

ko.asyncComputed = (fn, defaultValue) ->
  value = ko.observable defaultValue

  result = ko.computed ->
    value()

  result.loading = ko.observable true

  ko.computed ->
    result.loading true

    bluebird.resolve(fn()).then (asyncResult) ->
      result.loading false
      value asyncResult

  return result
