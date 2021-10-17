//
//  SignInViewController.swift
//  Sparky Moments
//
//  Created by Vlad Vinogrotskiy on 14.10.2021.
//

import UIKit
import FirebaseAuth

class SignInViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var underView: UIView!
    @IBOutlet weak var signInButton: UIButton!
    
    let segueId = "mainVC"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        underView.layer.cornerRadius = 20
        signInButton.layer.cornerRadius = 16
        
        emailTextField.layer.borderWidth = 2
        emailTextField.layer.borderColor = UIColor.lightGray.cgColor
        emailTextField.setLeftView(image: UIImage.init(systemName: "envelope")!, width: 30, height: 20)
        emailTextField.tintColor = .lightGray
        emailTextField.clipsToBounds = true
        emailTextField.layer.cornerRadius = 18
        
        passwordTextField.layer.borderWidth = 2
        passwordTextField.layer.borderColor = UIColor.lightGray.cgColor
        passwordTextField.setLeftView(image: UIImage.init(systemName: "key")!, width: 20, height: 30)
        passwordTextField.tintColor = .lightGray
        passwordTextField.clipsToBounds = true
        passwordTextField.layer.cornerRadius = 18

    }
    
    @IBAction func signInButtonPressed(_ sender: UIButton) {
        
        guard let email = emailTextField.text,
              let password = passwordTextField.text,
              email != "",
              password != ""
        else {
            notificationAlert(title: "Fields are empty", message: "Please fill all fields")
            return
        }

        Auth.auth().signIn(withEmail: email, password: password) { [weak self] user, error in
            if error != nil {
                self?.notificationAlert(title: "Error!", message: "Error occured!")
                return
            }
            if user != nil {
                self?.performSegue(withIdentifier: (self?.segueId)!, sender: nil)
                return
            }
            self?.notificationAlert(title: "No user", message: "Such user was not found")
        }
    }
}
