import UIKit

extension UIView {
  func addSubViews(views: [UIView]) {
    views.forEach({ addSubview($0) })
  }
}

extension UITextField {
  func addLeftPadding(_ inset: Int = 10) {
    let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: CGFloat(inset), height: self.frame.height))
    self.leftView = paddingView
    self.leftViewMode = ViewMode.always
  }
  
  func addRightPadding(_ inset: Int = 10) {
    let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: CGFloat(inset), height: self.frame.height))
    self.rightView = paddingView
    self.rightViewMode = ViewMode.always
  }
}
