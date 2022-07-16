//
//  ViewController.swift
//  Letter Cruncher
//
//  Created by Lee, Christopher on 9/18/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    let defaultString = ""
    
    let model = LetterCruncher()
    
    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var inputText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        inputText.becomeFirstResponder()
        firstLabel?.text = defaultString
        //inputText?.delegate = self
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if string.isEmpty{
            return true
        }
        
        if let current = textField.text, model.isValidInput(inputString: current) == false {
            return false
        } else {
            
            return true
        }
      
    }
    
    
    
    @IBAction func onTextInput(_ sender: UITextField) {
        
        if let temp = inputText.text {
            let x = model.makeDigitsString(inputString: temp)
            firstLabel.text = x
        }
        
    }
}

