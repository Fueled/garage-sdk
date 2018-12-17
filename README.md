# Garage SDK

Garage is a Swift Framework that helps product managers and the QA team to **track bugs** and **send them to Jira**.

## Features

- [x] Connect your Jira account
- [x] Post Screenshot / Video bugs to Jira
- [x] Draw, add title and description to your bugs for your developers
- [x] Metadata information such as device, iOS version, type of network, etc. systematically attached

## Instructions

To report a bug on `iPhone`, shake your device and Garage will appear. 
To report a bug on `iPad`, double tap with three fingers on the screen.

## Requirements

- iOS 9.0+
- Xcode 9.3+
- Swift 4.1+

## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. 

**1/** To integrate **Garage** into your Xcode project, add the following line in your Podfile.

```cocoapods
pod 'Garage'
```

**2/** In your terminal, run `pod install` or `pod update`.

**3/** Import the Garage Framework in your `AppDelegate`:

```swift
import Garage
```

**4/** Configure and start the **Garage** shared manager in `application:didFinishLaunchingWithOptions:`:

```swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
	Garage.shared.configure(with: self.window)

	return true
}
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks. 

_Coming soon..._

## Jira and Web Dashboard Setup

In order to configure the **Jira integration**, you need to create a new Garage application and bind it to the appropriate board on our web interface.

You will find the instructions once logged into the Garage Dashboard: _Coming soon..._

## License

Copyright 2019 Fueled Digital Media, LLC

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. The License is available [here](https://github.com/Fueled/garage-sdk/blob/master/LICENSE). 

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" basis, without warranties or donditions of any kind, either express or implied. See the License for the specific language governing permissions and limitations under the License.

