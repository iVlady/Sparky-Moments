//
//  Extentions.swift
//  Sparky Moments
//
//  Created by Vlad Vinogrotskiy on 14.10.2021.
//

import Foundation
import UIKit

extension UITextField {
    
    func setLeftView(image: UIImage, width: Int, height: Int) {
        let iconView = UIImageView(frame: CGRect(x: 10, y: 10, width: width, height: height))
        iconView.image = image
        let iconContainerView = UIView(frame: CGRect(x: 0, y: 0, width: 55, height: 45))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
        self.tintColor = .lightGray
    }
    
}
