# Judo Shield #

judoShield helps businesses manage risk from mobile-initiated transactions. Because mobiles often sit behind public WiFi or network carrier IP addresses, tools built for e-commerce
fail to detect fraudulent behaviour. Judo's solution includes robust device fingerprinting and multi factor location validation to pierce shared IP addresses combined with standard
tools to identify bad actors. Protect profits and increase sales with judo's mobile first fraud prevention.

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


#### Carthage

[Carthage](https://github.com/Carthage/Carthage) - decentralized dependency management.

- You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

- To integrate JudoShield into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "JudoPay/JudoShield" >= 2.0
```

- Execute the following command in your project folder. This should clone the project and build the `JudoKitObjC` scheme:

```bash
$ carthage bootstrap
```

- On your application targets’ 'General' settings tab, in the 'Embedded Binaries' section, drag and drop `JudoShield.framework` from the `Carthage/Checkouts` folder on disk.
- On your application targets’ 'Build Phases' settings tab, click the '+' icon and choose 'New Run Script Phase'. Create a Run Script with the following contents:

```sh
/usr/local/bin/carthage copy-frameworks
```

- Then add the paths to the frameworks you want to use under 'Input Files', e.g.:

```
$(SRCROOT)/Carthage/Checkouts/JudoShield/Framework/JudoShield.framework
```


#### Manual integration

- Add JudoShield as a [submodule](http://git-scm.com/docs/git-submodule) by opening the Terminal, changing into your project directory, and entering the following command:

```bash
$ git submodule add https://github.com/JudoPay/JudoShield.git
```

- Select your application project the Project Navigator (blue project icon) to navigate to the target configuration window and select the application target under the "Targets" heading in the sidebar.
- In the tab bar at the top of that window, open the "General" panel.
- Click on the '+' button in 'Embedded Binaries' section
- Navigate to the JudoShield/Framework Folder and add JudoShield.Framework 
- Click on the `+` button under the "Linked Frameworks and Libraries" section.
- Select `Security.framework`, `CoreTelephony.framework` and `CoreLocation.framework` from the list presented
- Open the "Build Settings" panel.
- Search for 'Framework Search Paths' and add `$(PROJECT_DIR)/JudoShield/Framework`
- Search for 'Runpath Search Paths' and make sure it contains '@executable_path/Frameworks'

- in case you only include JudoShield without the use of JudoKit, you also need to add the following script to your build phases

```
sh "${SRCROOT}/JudoShield/Framework/strip-frameworks.sh"
```

## Usage

* Add the following statement to the class where you intend to use JudoShield

```swift
@import JudoShield
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
