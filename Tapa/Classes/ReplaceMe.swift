import UIKit

extension UIView {
  //addSubview multiple UIView at a time
  func addSubViews(views: [UIView]) {
    views.forEach({ addSubview($0) })
  }
  
  //Make the corners of the UIView round.
  func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
       let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
       let mask = CAShapeLayer()
       mask.path = path.cgPath
       self.layer.mask = mask
  }
  
  //Find Parent ViewController
  var viewController: UIViewController? {
    if let vc = self.next as? UIViewController {
      return vc
    } else if let superview = self.superview {
      return superview.viewController
    } else {
      return nil
    }
  }
}

extension UITextField {
  //Add left and right insets of UITextField
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
