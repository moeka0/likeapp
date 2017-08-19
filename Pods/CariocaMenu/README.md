Carioca Menu
===============

[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/CariocaMenu.svg)](https://img.shields.io/cocoapods/v/CariocaMenu.svg)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

The fastest zero-tap iOS menu

![](https://raw.githubusercontent.com/arn00s/cariocamenu/master/cariocamenu.gif)

CariocaMenu is a simple, elegant, fast, modern, innovative, ..., navigation menu for your iOS app.

## Features

- [x] Accessible from a single swipe of the screen edge
- [x] Accessible with a tap on the indicator
- [x] Customisation for each side of the screen
- [x] Boomerang mode
- [x] Full AutoLayout
- [x] Easily customisable
- [x] [Complete Documentation](http://arn00s.github.io/cariocamenu/)

## Requirements

- Autolayout
- iOS 9.0+
- Xcode 8.0
- Swift 3.0 (Swift 2.3 available in swift_2.3 branch)

## Communication

- If you **need help**, use [Stack Overflow](http://stackoverflow.com/questions/tagged/CariocaMenu). (Tag 'CariocaMenu')
- If you'd like to **ask a general question**, use [Stack Overflow](http://stackoverflow.com/questions/tagged/CariocaMenu).
- If you **found a bug**, open an issue.
- If you **have a feature request**, open an issue.
- If you **want to contribute**, submit a pull request.
- If you **use the control**, contact me to mention your app on this page.

## Installation

### CocoaPods
CariocaMenu is now available on [CocoaPods](http://cocoapods.org). 
Simply add the following to your project Podfile, and you'll be good to go.

```ruby
use_frameworks!

pod 'CariocaMenu'
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate CariocaMenu into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "arn00s/cariocamenu"
```

Run `carthage` to build the framework and drag the built `cariocaframework.framework` into your Xcode project.

### Manually

If you prefer, you can integrate CariocaMenu into your project manually.

#### Source File

Simply add the `CariocaMenu.swift` source file directly into your project.

---

## Usage

### Creating your menu

```swift
import CariocaMenu

//Initialise the tableviewcontroller of the menu
let menuCtrl = self.storyboard?.instantiateViewControllerWithIdentifier("MyMenu") as! MyMenuContentController
        
//Set the tableviewcontroller for the menu
menu = CariocaMenu(menuController: menuCtrl)

```

### Adding it to a view

```swift
menu.addInView(yourView)
```

### Boomerang

A boomerang always comes back to it's original place (in theory).
By default, the boomerang is set to `None`. It means that the menu will stay where the user let it.
The two other boomerang options are :

- `Vertical` : Will always come back at the same vertical position, but on the edge the user has chosen.
```swift
menu.boomerang = .Vertical
```

- `VerticalAndHorizontal` : Will always come back at the same position (vertical + same screen edge)
```swift
menu.boomerang = .VerticalAndHorizontal
```

## TODO

- Support rotation
- Add a `live tutorial` to indicate users how to get the most of this menu
- Unit tests / UIAutomation Tests
- Check support for Objective-C projects
- Add emoji support instead of the menu images
- Add live background update when preselecting a menu item. The goal is to preview the preselected view before selection (with a blur effect)

## Known issues

Check the ([GitHub issues](https://github.com/arn00s/CariocaMenu/issues))

## FAQ

### Why should I use `CariocaMenu`?

You're starting a new iOS app, and you want to innovate on the user experience.

### Why the name `CariocaMenu`?

I didn't want to use the same naming convention that EVERYONE uses. I could have named it `ASSuperCoolMenu`, but it sucks.
A `Carioca` is someone who lives in Rio de Janeiro. I lived there for two months, and I had this menu idea while walking on the beach 😁

* * *

## Contact

- [LinkedIn](https://lu.linkedin.com/in/arnaudschloune)
- [twitter](https://twitter.com/arnaud_momo)

### Creator

- [Arnaud Schloune](http://github.com/arn00s)

## License

CariocaMenu is released under the MIT license. See LICENSE for details.
