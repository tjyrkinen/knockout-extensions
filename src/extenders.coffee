ko     = require 'knockout'
moment = require 'moment'
_      = require 'lodash'

ko.extenders.moment = (obs, options) ->
  obs.moment = ko.computed
    read: ->
      moment.utc(obs())
    write: (m) ->
      obs m.toISOString()

  if _.isObject(options) && options.dateParts
    addDatePart = (partName) ->
      obs.moment[partName] = ko.computed
        read: ->
          val = obs.moment()[partName]()
          if partName == 'month' then val + 1 else val

        write: (val) ->
          obs.moment()[partName] (if partName == 'month' then val - 1 else val)
          obs.moment obs.moment()

    for partName in ['year', 'month', 'date', 'hour', 'minute']
      addDatePart(partName)