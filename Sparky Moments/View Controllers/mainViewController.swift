//
//  ViewController.swift
//  Sparky Moments
//
//  Created by Vlad Vinogrotskiy on 13.10.2021.
//

import UIKit
import FirebaseAuth

class mainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signOutButtonPressed(_ sender: UIBarButtonItem) {
        do {
            try Auth.auth().signOut()
        } catch {
            print(error.localizedDescription)
        }
        dismiss(animated: true, completion: nil)
    }
    
    
}

