//
//  CustomTabBarViewController.swift
//  Sparky Moments
//
//  Created by Vlad Vinogrotskiy on 13.10.2021.
//

import Foundation
import UIKit

class CustomTabBarViewController: UITabBarController, UITabBarControllerDelegate {
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        self.selectedIndex = 1
        setUpMiddleButton()
    }
    
    func setUpMiddleButton() {
        let middleButton = UIButton(frame: CGRect(x: (self.view.bounds.width/2) - 33, y: -36, width: 70, height: 70))
        middleButton.setBackgroundImage(UIImage(named: "addNew"), for: .normal)
        middleButton.layer.shadowColor = UIColor.black.cgColor
        middleButton.layer.shadowOpacity = 0.1
        middleButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        self.tabBar.addSubview(middleButton)
        middleButton.addTarget(self, action: #selector(menuButtonAction), for: .touchUpInside)
        self.view.layoutIfNeeded()
    }
    
    @objc func menuButtonAction(sender: UIButton) {
        self.selectedIndex = 1
    }
    
}
