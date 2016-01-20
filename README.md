# knockout-extensions
Collection of generally useful bindings, extenders and other utilities for Knockout.js

## Usage
To add all
```
require 'knockout-extensions'
```

Or separately
```
require 'knockout-extensions/lib/bindings'
require 'knockout-extensions/lib/utilities'
require 'knockout-extensions/lib/extenders'
```

## Extensions
```
observable.extend({moment: true})
observable.extend({moment: {dateParts: true}})
```

## About dependencies
Knockout.js is an obvious peer dependency. Some utils use promises and for this the bluebird module required. Not all files require bluebird though so it is left optional by including it as a peer dependency as well.
