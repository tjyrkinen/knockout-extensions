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
All dependencies (apart for coffee-script which is used for build step only) are listed as peer dependencies. This is to avoid bloat and it's reasonable to assume if you're going to use these extensions you'll also use their dependencies elsewhere in your project.