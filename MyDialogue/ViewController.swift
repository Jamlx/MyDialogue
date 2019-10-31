//
//  ViewController.swift
//  MyDialogue
//
//  Created by James Cavanaugh on 10/31/19.
//  Copyright © 2019 James Cavanaugh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func isNameValid(input: String) -> Bool {
        if(input.count==0){
            return false
        }
        for chr in input {
            if ((!(chr >= "a" && chr <= "z") && !(chr >= "A" && chr <= "Z")) && !(chr == " ") ) {
                return false
            }
        }
        return true
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var nameTextBox: UITextField!
    
    @IBAction func submitBtn(_ sender: Any) {
        guard let name = nameTextBox.text, isNameValid(input: name) else{
            let alert = UIAlertController(title: "Invalid Name", message: "Please enter a valid name", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated:true, completion:nil)
            nameLabel.text = "Invalid Name"
            return
        }
        nameLabel.text = name
    }
    
}

