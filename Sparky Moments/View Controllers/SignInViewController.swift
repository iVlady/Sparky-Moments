//
//  SignInViewController.swift
//  Sparky Moments
//
//  Created by Vlad Vinogrotskiy on 14.10.2021.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.layer.borderWidth = 2
        emailTextField.layer.borderColor = UIColor.lightGray.cgColor
        emailTextField.setLeftView(image: UIImage.init(systemName: "envelope")!, width: 30, height: 20)
        emailTextField.tintColor = .lightGray
        
        passwordTextField.layer.borderWidth = 2
        passwordTextField.layer.borderColor = UIColor.lightGray.cgColor
        passwordTextField.setLeftView(image: UIImage.init(systemName: "key")!, width: 20, height: 30)
        passwordTextField.tintColor = .lightGray

    }
    
    
    

    

}
