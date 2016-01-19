ko = require 'knockout'

ko.virtualElements.allowedBindings.context = true
ko.bindingHandlers.context =
  init: (element, valueAccessor, allBindings, viewModel, bindingContext) ->
    data = {}
    data[k] = ko.unwrap(v) for k, v of valueAccessor()

    childBindingContext = bindingContext.extend data
    ko.applyBindingsToDescendants(childBindingContext, element)

    return controlsDescendantBindings: true