//
//  LandingViewController.swift
//  PoolTime
//
//  Created by Kobe McKee on 1/6/20.
//  Copyright © 2020 Kobe McKee. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    
    let userController = UserController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumberTextField.delegate = self
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard(_:)))
        self.view.addGestureRecognizer(tapGesture)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    // MARK: - Keyboard Config
    @objc func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        phoneNumberTextField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        phoneNumberTextField.resignFirstResponder()
        return true
    }
    
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 {
                print(self.view.frame.height)
                print(keyboardSize.height)
                self.view.frame.origin.y -= keyboardSize.height / 2
                print(self.view.frame.height)
                print(keyboardSize.height)
            }
        }
    }

    @objc func keyboardWillHide(notification: NSNotification) {
        
        print("WILLHIDE")
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            
            if self.view.frame.origin.y != 0 {
                print(self.view.frame.height)
                print(keyboardSize.height)
                self.view.frame.origin.y = 0
                print(self.view.frame.height)
                print(keyboardSize.height)
            }
            
            
            
        }
        

    }
    
    
    
    // MARK: - Input Handling
    func formatPhoneNumber(enteredNumber: String) -> Int? {
        
        var numberArray = Array(enteredNumber)
        for number in numberArray {
            if !number.isNumber {
                let numberIndex = numberArray.firstIndex(of: number)
                numberArray.remove(at: numberIndex!)
            }
        }
        
        while numberArray.count > 10 {
            numberArray.removeFirst()
        }
        
        let stringNumbers = String(numberArray)
        guard let phoneNumberTotal = Int(stringNumbers) else {
            //TODO: send alert "invalid password"
            return 0
        }
        
        return phoneNumberTotal
    }
    
    
    
    @IBAction func nextButtonPressed(_ sender: Any) {
        
        guard let enteredNumber = phoneNumberTextField.text else { return }
        guard let number = formatPhoneNumber(enteredNumber: enteredNumber) else { return }
        if number == 0 {
            //TODO: send alert "invalid password"
        }
        
        let isRegistered = userController.checkIfRegistered(phoneNumber: number)
        
        if isRegistered {
            userController.logInUser()
        } else {
            self.performSegue(withIdentifier: "toRegister1", sender: self)
        }
        
        self.performSegue(withIdentifier: "toRegister1", sender: self)
    }
    
    
    func sendInvalidPhoneNumber() {
        
        
        
        
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
