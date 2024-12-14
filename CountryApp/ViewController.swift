//
//  ViewController.swift
//  CountryApp
//
//  Created by Mac on 17.11.24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var enterButton: UIButton!
    @IBOutlet weak var hiddenLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hiddenLabel.isHidden = true
        
        emailField.layer.cornerRadius = 15
        emailField.layer.borderWidth = 0.7
        emailField.layer.borderColor = UIColor.gray.cgColor
        
        passwordField.layer.cornerRadius = 15
        passwordField.layer.borderWidth = 0.7
        passwordField.layer.borderColor = UIColor.gray.cgColor
        
        enterButton.layer.masksToBounds = true
        enterButton.layer.cornerRadius = 15
        

        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func enterButtonTapped(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "SecondController") as! SecondController
        
        if let count = passwordField.text?.count,
           let email = emailField.text, !email.isEmpty {
            if count >= 5 && count <= 10 {
                navigationController?.show(controller, sender: nil)
            }
        }
        
        if let email = emailField.text,
           let count = passwordField.text?.count, count < 5 || email.isEmpty {
            hiddenLabel.isHidden = false
            hiddenLabel.text = "You've entered wrong information. Please try again later."
        }
    }
}

