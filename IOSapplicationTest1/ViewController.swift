//
//  ViewController.swift
//  IOSapplicationTest1
//
//  Created by Sai Snehitha Bhatta on 19/10/21.
//

import UIKit

class ViewController: UIViewController {


    //question1
    
    @IBOutlet weak var textMsg: UILabel!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var age: UITextField!
    
    ///question 2
    
    
    @IBOutlet weak var number3: UITextField!
    @IBOutlet weak var number2: UITextField!
    @IBOutlet weak var number1: UITextField!
    @IBOutlet weak var message: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    func dependOnAge(){
        if ag <= 12{
            textMsg.text = "Hi "+fn+ln+" a child"
        }
        else if ag > 13 && ag <= 19{
            textMsg.text = "Hi "+fn+ln+" a teenager"
        }
        else if ag > 19 && ag <= 29{
            textMsg.text = "Hi "+fn+ln+" a youngman"
        }
        else if ag >= 30 && ag <= 49{
            textMsg.text = "Hi "+fn+ln+" a middle aged person"
        }
        else if ag >= 50 && ag <= 64{
            textMsg.text = "Hi "+fn+ln+" an experienced person"
        }
        else{
            textMsg.text = "Hi "+fn+ln+" a senior citizen"
        }
    }
    var ag = 0.0
    var fn=""
    var ln=""
    @IBAction func enterButt(_ sender: Any) {
        fn = (firstName.text)!
        ln = (lastName.text)!
        ag = Double(age.text!)!
    dependOnAge()
}
    
    //question2
    var nm1 = 0.0
    var nm2 = 0.0
    var nm3 = 0.0
    @IBAction func addNumbers(_ sender: Any) {
        nm1 = Double(number1.text!)!
        nm2 = Double(number2.text!)!
        nm3 = Double(number3.text!)!
        let sum = nm1+nm2+nm3
        message.text = String(sum)
    }
    @IBAction func avgNumbers(_ sender: Any) {
        nm1 = Double(number1.text!)!
        nm2 = Double(number2.text!)!
        nm3 = Double(number3.text!)!
        let avg = (nm1+nm2+nm3)/3
        message.text = String(avg)
    }
    @IBAction func highNumber(_ sender: Any) {
        nm1 = Double(number1.text!)!
        nm2 = Double(number2.text!)!
        nm3 = Double(number3.text!)!
        if nm1 > nm2 && nm1 > nm3{
            message.text = "Highest number is:" + String(nm1)
        }
        else if nm2 > nm1 && nm2 > nm3{
            message.text = "Highest number is:" + String(nm2)
        }
        else{
            message.text = "Highest number is:" + String(nm3)
        }
    }
    @IBAction func lowNumber(_ sender: Any) {
        nm1 = Double(number1.text!)!
        nm2 = Double(number2.text!)!
        nm3 = Double(number3.text!)!
        if nm1 < nm2 && nm1 < nm3{
            message.text = "Smallest number is:" + String(nm1)
        }
        else if nm2 < nm1 && nm2 < nm3{
            message.text = "Smallest number is:" + String(nm2)
        }
        else{
            message.text = "Smallest number is:" + String(nm3)
        }
        
    }
    
}
