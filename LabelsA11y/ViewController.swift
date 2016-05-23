//
//  ViewController.swift
//  LabelsA11y
//
//  Created by Paul J. Adam on 5/23/16.
//  Copyright © 2016 Paul J. Adam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Connect the email label text as the accessibilityLabel of the email text field.
        emailTextField.accessibilityLabel = emailLabel.text
        //Manually set a string as the accessible name of the phone number text field.
        phoneTextField.accessibilityLabel = "Phone Number"
        //Add gesture recognizer to hide keyboard when tapping outside text fields.
        tapToDismissKeyboard()
    }
    
    func tapToDismissKeyboard() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

