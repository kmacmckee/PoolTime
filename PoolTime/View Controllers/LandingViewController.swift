//
//  LandingViewController.swift
//  PoolTime
//
//  Created by Kobe McKee on 1/6/20.
//  Copyright © 2020 Kobe McKee. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController {

    
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    
    let userController = UserController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
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
        
        
        userController.checkIfRegistered(phoneNumber: number)
        
        
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
