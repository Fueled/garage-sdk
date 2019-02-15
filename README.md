# Garage SDK

![Header](README_images/Header.png)

[![Documentation](https://fueled.github.io/garage-sdk/badge.svg)](https://fueled.github.io/garage-sdk/)

[Garage](https://garage.fueled.com) is a Swift Framework for iOS that allows you to log defects and collect feedback from inside your app directly to Jira in seconds. Explore more at [https://garage.fueled.com](https://garage.fueled.com) where you can register with Garage and connect to your own [Jira](https://www.atlassian.com/software/jira) account.

## Features

- [x] Post screenshots and capture video sequences of your defects
- [x] Draw directly to your screen to highlight areas of concern
- [x] Annotate with a title and description before submitting to Jira
- [x] Relevent information such as device model, iOS version, and network type are automatically attached

## Instructions

To report a bug on `iPhone`, shake your device and Garage will appear. 
To report a bug on `iPad`, double tap with three fingers on the screen.

## Documentation

The documentation for project is available [here](https://fueled.github.io/garage-sdk/).

## Requirements

- iOS 10.0+
- Xcode 9.3+
- Swift 4.1+

## Installation

### CocoaPods

[CocoaPods](http://cocoapods.org) is a popular dependency manager for Cocoa projects and our recommended method for integrating the framework into your project. 

**1.** To integrate **Garage** into your Xcode project, add the following line to your Podfile.

```ruby
pod 'Garage', '~> 1.0'
```

**2.** In your terminal, run `pod install` or `pod update`.

**3.** Import the Garage framework in your `AppDelegate`:

```swift
import Garage
```

**4.** Configure and start the **Garage** shared manager in `application:didFinishLaunchingWithOptions:`:

```swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
	Garage.shared.configure(clientId: "Your bundle ID", window: self.window)

	return true
}
```

You can optionally specify a closure as the last argument to `configure`, allowing to customize what's sent to Jira. For example:
```swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
	Garage.shared.configure(clientId: "Your bundle ID", window: self.window) {
		$0.customPayload["environment"] = "dev"
	}

	return true
}
```

Please to the documentation for [`BugInfo`](https://fueled.github.io/garage-sdk/Classes/BugInfo.html) for more information.

## Jira and Web Dashboard Setup

In order to properly configure for use with **Jira**, you will need to log in to the [Garage Dashboard](https://garage.fueled.com) where you can create a new Garage application and bind it to a corresponding Jira board. This will ensure that the defects you log from the app are added as tickets to your project's backlog.

## License

Copyright 2019 Fueled Digital Media, LLC

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. The License is available [here](https://github.com/Fueled/garage-sdk/blob/master/LICENSE). Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" basis, without warranties or donditions of any kind, either express or implied. See the License for the specific language governing permissions and limitations under the License.
