# InfoSecurityiOS
iOS project for information security -- Stranger Danger

**Stranger Danger** is a tool that makes it easier to get from point a to point b, when the gap between them may not be safe. 

## Installing CocoaPods

This app uses Coocoapods, which need to be installed externally

## APIs and external frameworks

We used Cocoapods to integrate external libraries to our projects. This is the iOS standard.

Once you have cocoapods installed, simple run `pod install` in the root directory 

- **AFDropdownNotification** - Internal notifications. A nice Dropdown that gets dismissed after a tap. This tells the user when an event occurred. Similar to toast notifications on android
- **FXForms** - Auto generated table views with input options. This is how we collect the users contacts. 
- **DBMapSelectorViewController** - Draws a highlighted-circle on a map. For high crime areas, we draw a circle around a specific point. 
- **AFNetworking** - The standard framework for GET and POST request. This handles all requests to third REST apis. 
- **SoundManager** - Drop in library for playing sound files. This helps us play the siren. 


