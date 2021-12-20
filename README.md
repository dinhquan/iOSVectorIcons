# iOSVectorIcons

Choose from 10k+ icons to use. 
`iOSVectorIcons` was inspried from [react-native-vector-icons](https://github.com/oblador/react-native-vector-icons). You can search for icons by using demo app or this [link](https://oblador.github.io/react-native-vector-icons/).

![](https://raw.githubusercontent.com/dinhquan/iOSVectorIcons/main/iOSVectorIconsDemo/Demo/Demo.png)

## Installation

#### CocoaPods

```ruby
pod 'iOSVectorIcons', '~> 1.0.0'
```

#### Carthage

```ogdl
github "https://github.com/dinhquan/iOSVectorIcons" ~> 1.0.0
```

#### Swift Package Manager

```swift
dependencies: [
    .package(url: "https://github.com/dinhquan/iOSVectorIcons", .upToNextMajor(from: "1.0.0"))
]
```

## Usage

### SwifUI

iOSVectorIcons provides `Icon` view for creating a simple icon.

```swift
Icon(.ionicons(.home))

// Customize icon size & color
Icon(.ionicons(.home), size: 24, color: .blue)
```

Generaly, we create an Icon with `IconFont`, size/color (optional). IconFonts are defined as enum so it's strong typed, you are guaranteed no typo in your code.

Create a button with `IconButton`

```swift
IconButton(.entypo(.share), size: 20, color: .black) {
    /// Handle click action here
}
```

Customize button style to create border, circle or filled button by `style` modifier. Examples:

```swift
// Border button
IconButton(.ionicons(.settings_sharp), size: 20)
    .style(width: 100, highlightedColor: .gray, cornerRadius: 20, borderWidth: 2, borderColor: .black)

// Circle Buttons (corner radius = width / 2)
IconButton(.ionicons(.play), size: 40, color: .white)
    .style(width: 60, height: 60, backgroundColor: .blue, cornerRadius: 30)

// Filled button
IconButton(.ionicons(.trash), size: 24, color: .white)
    .style(width: 80, height: 40, backgroundColor: .red, cornerRadius: 10)

// Full-width button
IconButton(.ionicons(.cloud_download), size: 24, color: .white)
    .style(width: .infinity, height: 50, backgroundColor: .blue, cornerRadius: 8)
```

### UIKit

Use `setIcon` method to set icon for `UILabel` or `UIButton`

```swift
// Label
yourLabel.setIcon(.ionicons(.download))

// Button, make sure button style is Default (in Storyboard/Xib)
yourButton.setIcon(.entypo(.erase), size: 30, color: .red, for: .normal)
```

## Contributing
Contributions for bug fixing or improvements are welcomed. Feel free to submit a pull request.
If you have any questions, feature suggestions or bug reports, please send me an email to dinhquan191@gmail.com.
