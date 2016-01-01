//
//  ViewController.swift
//  Is It a Prime Number?
//
//  Created by Mustafa Mohamed on 17/12/2015.
//  Copyright (c) 2015 Mustafa Mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    @IBOutlet var resultsLabel: UILabel!
    
    @IBAction func checkButton(sender: AnyObject) {
        
        if let n = textField.text.toInt(){ //Checks if the text is a number. If so, it converts it to int and assigns it to n as a constant.
            var isPrime = true //Boolean set to true
            
            if n == 1{
                isPrime = false // 1 is not a prime number
            }
            else {
                for var i = 2; i<n; i++ { //loops through all numbers before n.
                
                    if(n % i == 0){ //checks if n is divisible by any of these numbers.
                        isPrime = false //if it can be then n is not a prime number.
                        break // break loop
                    }
                    
                }
            }
        
            if isPrime{
                resultsLabel.text = "Hey, \(n) is a prime number!" //tell user that n is a prime number.
            }
            else{
                resultsLabel.text = "\(n) is not a prime number" //tell user that n is not a prime number.
            }
        }
        else {
            resultsLabel.text = "\(textField.text) is not a whole number" //error checking if something else has been entered.
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

