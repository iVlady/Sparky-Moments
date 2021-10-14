//
//  SignUpViewController.swift
//  Sparky Moments
//
//  Created by Vlad Vinogrotskiy on 14.10.2021.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var underView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        underView.layer.cornerRadius = 20
        
        fullNameTextField.layer.borderWidth = 2
        fullNameTextField.layer.borderColor = UIColor.lightGray.cgColor
        fullNameTextField.setLeftView(image: UIImage.init(systemName: "person")!, width: 25, height: 20)
        fullNameTextField.tintColor = .lightGray
        
        emailTextField.layer.borderWidth = 2
        emailTextField.layer.borderColor = UIColor.lightGray.cgColor
        emailTextField.setLeftView(image: UIImage.init(systemName: "envelope")!, width: 30, height: 20)
        
        passwordTextField.layer.borderWidth = 2
        passwordTextField.layer.borderColor = UIColor.lightGray.cgColor
        passwordTextField.setLeftView(image: UIImage.init(systemName: "key")!, width: 20, height: 30)
        
        signUpButton.layer.cornerRadius = 16

    }
    

    @IBAction func signUpButtonPressed(_ sender: UIButton) {
        
    }
    
}
