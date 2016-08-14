# SwiftyStoryboard
A More Swifty way to use storyboards

[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

##Motivation:
Take a look at the code below:

```swift
let storyboard = UIStoryboard(name: "Main", bundle: nil)
let controller = storyboard.instantiateViewControllerWithIdentifier("Settings") as! SettingsViewController
```
Such code has 2 disadvantages:

  * Storyboard name is raw string
  * Controller identifier is raw string
  
We want to get rid of that. `SwiftyStoryboard` allows to deal with both of there problems in one shot. 

##Usage example
We create a struct that conforms to `Storyboard` protocol like this one:

```swift
struct Main: Storyboard {
    static let fileName = "Main"
    
    enum ControllerId: String {
        case Settings
    }
}
```

and now we can instantiate out controller with specific identifier like this:

```swift
let controller: SettingsViewController = Main.instantiateViewController(with: .Settings)
```
Such approach allows us to distinguish different storyboards with different controller identifiers 
and give more information to compiler about our storyboards.

