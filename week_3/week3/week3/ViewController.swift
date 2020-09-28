//
//  ViewController.swift
//  week3
//
//  Created by nono chan  on 2020/9/27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lable01: UILabel!
    
    @IBOutlet weak var accountField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var textField01: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
           }


    @IBAction func didChangeSegment(_ sender: UISegmentedControl){
        if sender.selectedSegmentIndex == 0 {
            lable01.textColor = .darkGray
            textField01.backgroundColor = .darkGray
            textField01.isUserInteractionEnabled = false
            textField01.isEnabled = false
        }
        else if sender.selectedSegmentIndex == 1 {
            lable01.textColor = .black
            textField01.backgroundColor = .white
            textField01.isUserInteractionEnabled = true
            textField01.isEnabled = true

        }
    }
    @IBAction func btn1(_ sender: Any) {

       if accountField.text?.isEmpty == true {
           let controller = UIAlertController(title: "ERROR!", message: "Account should not be empty.", preferredStyle: .alert)
           let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
           controller.addAction(okAction)
           present(controller, animated: true, completion: nil)
        }
        else if passwordField.text?.isEmpty == true {
           let controller = UIAlertController(title: "ERROR!", message: " Password should not be empty.", preferredStyle: .alert)
           let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
           controller.addAction(okAction)
           present(controller, animated: true, completion: nil)
        }
        else if textField01.text?.isEmpty == true {
           let controller = UIAlertController(title: "ERROR!", message: "Check Password should not be empty.", preferredStyle: .alert)
           let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
           controller.addAction(okAction)
           present(controller, animated: true, completion: nil)
        }
        else if accountField.text != "appworks_school@gmail.com",textField01.text?.isEmpty == false {
           let controller = UIAlertController(title: "ERROR!", message: "Login fail.", preferredStyle: .alert)
           let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
           controller.addAction(okAction)
           present(controller, animated: true, completion: nil)
        }
        else if passwordField.text != "1234",textField01.text?.isEmpty == false {
           let controller = UIAlertController(title: "ERROR!", message: "Login fail.", preferredStyle: .alert)
           let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
           controller.addAction(okAction)
           present(controller, animated: true, completion: nil)
        }

    }
 

    
    
    
    
    
    
    
    
}

