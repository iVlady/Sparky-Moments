//
//  SignUpViewController.swift
//  Sparky Moments
//
//  Created by Vlad Vinogrotskiy on 14.10.2021.
//

import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController {

    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var underView: UIView!
    
    let segueId = "mainVC"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        underView.layer.cornerRadius = 20
        
        fullNameTextField.layer.borderWidth = 2
        fullNameTextField.layer.borderColor = UIColor.lightGray.cgColor
        fullNameTextField.setLeftView(image: UIImage.init(systemName: "person")!, width: 25, height: 20)
        fullNameTextField.tintColor = .lightGray
        fullNameTextField.clipsToBounds = true
        fullNameTextField.layer.cornerRadius = 18
        
        emailTextField.layer.borderWidth = 2
        emailTextField.layer.borderColor = UIColor.lightGray.cgColor
        emailTextField.setLeftView(image: UIImage.init(systemName: "envelope")!, width: 30, height: 20)
        emailTextField.clipsToBounds = true
        emailTextField.layer.cornerRadius = 18
        
        passwordTextField.layer.borderWidth = 2
        passwordTextField.layer.borderColor = UIColor.lightGray.cgColor
        passwordTextField.setLeftView(image: UIImage.init(systemName: "key")!, width: 20, height: 30)
        passwordTextField.clipsToBounds = true
        passwordTextField.layer.cornerRadius = 18
        
        signUpButton.layer.cornerRadius = 16

    }
    

    @IBAction func signUpButtonPressed(_ sender: UIButton) {
        guard let email = emailTextField.text,
              let fullName = fullNameTextField.text,
              let password = passwordTextField.text,
              email != "",
              fullName != "",
              password != ""
        else {
            notificationAlert(title: "Wrong", message: "Fill all fields")
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] user, error in
            if error != nil || user == nil {
                self?.notificationAlert(title: "Error", message: "Some error occured")
                print(error!.localizedDescription)
            }
            else {
                self?.performSegue(withIdentifier: (self?.segueId)!, sender: nil)
            }
            
        }
        
    }
    
}
