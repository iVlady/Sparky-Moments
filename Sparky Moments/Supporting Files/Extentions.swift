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


extension UIViewController {
    
    func notificationAlert (title: String, message: String) {
        let alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let blurVisualEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .light))
        blurVisualEffectView.frame = view.bounds
        
        let okButton = UIAlertAction(title: "OK", style: .default) { _ in
            blurVisualEffectView.removeFromSuperview()
        }
        
        self.view.addSubview(blurVisualEffectView)
        alertVC.addAction(okButton)
        self.present(alertVC, animated: true, completion: nil)
        
    }
    
}
