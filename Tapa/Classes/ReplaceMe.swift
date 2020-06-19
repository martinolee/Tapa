import UIKit
//Hello
extension UIView {
  //addSubview multiple UIView at a time
  public func addSubviews(views: [UIView]) {
    views.forEach({ addSubview($0) })
  }
  
  //Make the corners of the UIView round.
  public func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
       let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
       let mask = CAShapeLayer()
       mask.path = path.cgPath
       self.layer.mask = mask
  }
}

extension UITextField {
  //Add left and right insets of UITextField
  public func addLeftPadding(_ inset: Int = 10) {
    let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: CGFloat(inset), height: self.frame.height))
    self.leftView = paddingView
    self.leftViewMode = ViewMode.always
  }
  
  public func addRightPadding(_ inset: Int = 10) {
    let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: CGFloat(inset), height: self.frame.height))
    self.rightView = paddingView
    self.rightViewMode = ViewMode.always
  }
}
