//
//  SignUpViewController.swift
//  myProjectPage
//
//  Created by qkrwoghk on 2020/06/03.
//  Copyright © 2020 COMP420. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    /************* variables *************/
    var gender:String = ""
    @IBOutlet weak var manButton: UIButton!
    @IBOutlet weak var womanButton: UIButton!
    @IBOutlet var informTextField: [UITextField]!
    @IBOutlet weak var alertMessageTopConstraints: NSLayoutConstraint!
    @IBOutlet weak var alterMessageLabel: UILabel!
    
    /************* Actions *************/
    @IBAction func genderSelect(_ sender: UIButton) {
        if(womanButton.alpha == 1){
            womanButton.alpha = 0.5
        } else {
            manButton.alpha = 0.5
        }
        sender.alpha = 1
    }
    
    @IBAction func SignUpEvent(_ sender: UIButton) {
        var inform = [String]()
        var valid = true
        for i in 0 ..< informTextField.count {
            if let information = informTextField[i].text{
                if(information == ""){
                    valid = false
                    break
                } else {
                    inform += [information]
                }
            } else {
                return
            }
        }
        
        if valid {
            if manButton.alpha == 1{
                gender = "남"
            } else if womanButton.alpha == 1{
                gender = "여"
            } else {//choose nothing
                valid = false
            }
        }
        
        if valid == false {//error message
            showalertMessage(const: 336, mesg: "Fill the blank")
        } else {
            if inform[1] == inform[2] {
                User.addUser(id: inform[0], pwd: inform[1], name: inform[3], gender: gender)
                showalertMessage(const: 336, mesg: "Sign Up Succeed")
            } else {//error message
                showalertMessage(const: 336, mesg: "Dismatch password")
            }
        }
    }
    
    @IBAction func didOK(_ sender: Any) {
        if(alterMessageLabel.text == "Fill the blank" || alterMessageLabel.text == "Dismatch password"){
            showalertMessage(const: 1000, mesg:"")
        } else {//sign up success
            //change ViewController
            let nextVC = self.storyboard?.instantiateViewController(identifier: "SignInViewController")
            nextVC?.modalPresentationStyle = .fullScreen
            nextVC?.modalTransitionStyle = .coverVertical
            self.present(nextVC!, animated: true, completion: nil)
        }
    }
    
    /************* viewDidLoad *************/
    override func viewDidLoad() {
        super.viewDidLoad()
        alertMessageTopConstraints.constant = 1000
    }
    
    /************* function *************/
    func showalertMessage (const: CGFloat, mesg: String){
        alertMessageTopConstraints.constant = const
        alterMessageLabel.text = mesg
        
        //attributedString. set Color
        let attributedString = NSMutableAttributedString(string: alterMessageLabel.text!)
        if(mesg == "Fill the blank" || mesg == "Dismatch password"){
            alterMessageLabel.textColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 0.7956175086)
        } else {
            alterMessageLabel.textColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
        }
        alterMessageLabel.attributedText = attributedString
        
        //animate
        UIView.animate(withDuration: 0.6, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
                self.view.layoutIfNeeded()
            }, completion: nil)
    }
    
    /************* hide keyboard *************/
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
          self.view.endEditing(true)
    }
}
