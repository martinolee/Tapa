[![Swift 5.2](https://img.shields.io/badge/swift-5.2-ED523F.svg?style=flat)](https://swift.org/download/)[![Version](https://img.shields.io/cocoapods/v/Tapa.svg?style=flat)](https://cocoapods.org/pods/Tapa)[![License](https://img.shields.io/cocoapods/l/Tapa.svg?style=flat)](https://cocoapods.org/pods/Tapa)[![Platform](https://img.shields.io/cocoapods/p/Tapa.svg?style=flat)](https://cocoapods.org/pods/Tapa)

# Tapa

Tapa helps to make it easier to implement when creating views.



## Requirements

| platform | version |
| -------- | ------- |
| iOS      | >= 10.0 |

| language | version |
| -------- | ------- |
| Swift    | >= 5.0  |



## Installation

### Cocoapods

Add the line below to Podfile and to exec `$ pod install`.

```ruby
pod 'Tapa'
```





## Usage

Tapa will start when after call `import Tapa`.



## example

#### Add multiple views easily
```swift
  public func addSubviews(views: [UIView]) {
    views.forEach({ addSubview($0) })
  }
```
|                           Original                           |                             Tapa                             |
| :----------------------------------------------------------: | :----------------------------------------------------------: |
| ![addSubviewsBefore](https://tva1.sinaimg.cn/large/007S8ZIlgy1gfydnwaz9lj30fe06xwfl.jpg) | ![addSubviewsAfter](https://tva1.sinaimg.cn/large/007S8ZIlgy1gfydkq07mtj30fe06dgmn.jpg) |



#### Easily add left and right insets of UITextField
```swift
//in anywhere

textField.addLeftPadding() 
//The default is 10. 
//But if you want, pass the other value to the parameter.
```
|                           Original                           |                             Tapa                             |
| :----------------------------------------------------------: | :----------------------------------------------------------: |
| ![addLeftPaddingBefore](https://tva1.sinaimg.cn/large/007S8ZIlgy1gfyevt4m65j30ap0l4t9x.jpg) | ![addLeftPaddingAfter](https://tva1.sinaimg.cn/large/007S8ZIlgy1gfyem61c5vj30ap0l4jsl.jpg) |



#### Easily set up each corner of the view.

```swift
  override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
    
    presentButton.roundCorners([.topRight, .topLeft], radius: 50)
  }
```


| .topRight, .topLeft |.topLeft, bottomRight|
| :--: | :--: |
| ![topleft-topright-50](https://tva1.sinaimg.cn/large/007S8ZIlgy1gfyeu0lej9j30ap0l4abb.jpg) | ![topright-bottomleft-50](https://tva1.sinaimg.cn/large/007S8ZIlgy1gfyeu529qxj30ap0l475o.jpg) |



####  Put a shadow on each of the four corners.

```swift
public enum ShadowCorner {
  case leftTop
  case leftBottom
  case rightTop
  case rightBottom
}
```

![스크린샷 2020-06-20 오후 1.16.23](https://tva1.sinaimg.cn/large/007S8ZIlgy1gfymtlo1gkj30tk0g3jvs.jpg)



```swift
     orangeBox.makeShadow(whichCorner: .rightBottom)
```

<img src="https://tva1.sinaimg.cn/large/007S8ZIlgy1gfymv13dn2j30ak0l4gn3.jpg" alt="스크린샷 2020-06-20 오후 1.17.44" style="zoom:67%;" />

Or you can use all parameters

```swift
orangeBox.makeShadow(color: UIColor.red.cgColor, opacity: 0.8, whichCorner: .rightBottom, offsetWidth: 10, offsetHeight: 10, radius: 10)
```

![스크린샷 2020-06-20 오후 1.24.37](https://tva1.sinaimg.cn/large/007S8ZIlgy1gfyn25jduhj30at0c3gmf.jpg)



## Author

wanderingfairy, justice_@kakao.com

## License

Tapa is available under the MIT license. See the LICENSE file for more info.

