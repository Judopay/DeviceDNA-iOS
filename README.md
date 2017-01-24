# DeviceDNA #

The DeviceDNA iOS library allows you to identify devices using the Judopay Genome service

## Getting Started

### Step 1: Initialize DeviceDNA

#### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects.

- You can install CocoaPods with the following command:

```bash
$ gem install cocoapods
```

- Add DeviceDNA to your `Podfile` to integrate it into your Xcode project:

```ruby
source 'https://github.com/CocoaPods/Specs.git'

pod 'DeviceDNA', '~> 0.1'
```

- Then, run the following command:

```bash
$ pod install
```

- Please make sure to always **use the newly generated `.xcworkspace`** file not not the projects `.xcodeproj` file

- In your Xcode environment, go to your `Project Navigator` (blue project icon), select the target that will initialize DeviceDNA and open the tab called `Build Phases`.
- Add a new `Run Script Phase` and drag it above the `Compile Sources` build phase.
- In the shell script, paste the following line:

```bash
sh "${PODS_ROOT}/DeviceDNA/Framework/strip-frameworks-cocoapods.sh"
```


