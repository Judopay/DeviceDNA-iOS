# DeviceDNA #

The DeviceDNA iOS library allows you to identify devices using the Judopay Genome service

### Integration

#### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects.

- You can install CocoaPods with the following command:

```bash
$ gem install cocoapods
```

- Add JudoShield to your `Podfile` to integrate it into your Xcode project:

```ruby
source 'https://github.com/CocoaPods/Specs.git'

pod 'JudoShield', '~> 2.0'
```

- Then, run the following command:

```bash
$ pod install
```

- Please make sure to always **use the newly generated `.xcworkspace`** file not not the projects `.xcodeproj` file

## Usage

* Add the following statement to the class where you intend to use JudoShield

```swift
@import DeviceDNA
```


* to get the device signal of the executer, use the following command

_swift_
```swift
let judoShield = JudoShield()
let dictionary = judoShield.encryptedDeviceSignal()
```

_obj-c_
```objc
JudoShield *judoShield = [JudoShield new];
NSDictionary *deviceSignal = [judoShield encryptedDeviceSignal];
```


### Sign up for judopayments

- To use the Judo SDK, you'll need to [sign up](https://www.judopay.com/signup) and get your app token 
- the SDK has to be integrated in your project using one of the following methods

## Disclaimer

be aware that this module is intended to work with the [Judo-Swift SDK](https://github.com/JudoPay/Judo-Swift), if you need a full solution containing all relevant modules for making payments have a look at the [JudoKit](https://github.com/JudoPay/JudoKit)
