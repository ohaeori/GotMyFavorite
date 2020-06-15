//
//  ViewController.swift
//  myProjectPage
//
//  Created by qkrwoghk on 2020/06/03.
//  Copyright © 2020 COMP420. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    /************* variables *************/
    @IBOutlet weak var topContraintHeight: NSLayoutConstraint!
    @IBOutlet weak var logoTopConstraintHeight: NSLayoutConstraint!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwdTextField: UITextField!
    
    /************* actions *************/
    @IBAction func showSignIn(_ sender: Any) { //show & hide sign in pop
        if(topContraintHeight.constant == 288){//hide
            topContraintHeight.constant = 800
            logoTopConstraintHeight.constant = 225
        } else {//show
            topContraintHeight.constant = 288
            logoTopConstraintHeight.constant = 80
        }
        
        UIView.animate(withDuration: 0.6, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
                self.view.layoutIfNeeded()
            }, completion: nil)
    }
    
    @IBAction func didSignIn(_ sender: UIButton) {
        var userid:String = ""
        var userpwd:String = ""
        if let id = idTextField.text,
            let pwd = pwdTextField.text{
            userid = id
            userpwd = pwd
        } else {
        }
        
        let signinsuccess = User.isUser(id: userid, pwd: userpwd)
        if(true){//success login . signinsuccess
            //change View
            let nextstoryboard: UIStoryboard? = UIStoryboard(name: "getFavorite", bundle: nil)
            guard let next = nextstoryboard?.instantiateViewController(withIdentifier: "CVC") as? ColorViewController else {
                return
            }
            next.receivedID = self.idTextField.text!
            next.modalPresentationStyle = .fullScreen
            next.modalTransitionStyle = .coverVertical
            self.present(next, animated: true)
        } else {//fail login
            UIView.animate(withDuration: 0.05, animations: {
                self.idTextField.frame.origin.x -= 10
                self.pwdTextField.frame.origin.x -= 10
                self.idTextField.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 0.3964041096)
                self.pwdTextField.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 0.4)
            }, completion: { _ in
                UIView.animate(withDuration: 0.05, animations: {
                    self.idTextField.frame.origin.x += 20
                    self.pwdTextField.frame.origin.x += 20
                }, completion: { _ in
                    UIView.animate(withDuration: 0.05, animations: {
                        self.idTextField.frame.origin.x -= 10
                        self.pwdTextField.frame.origin.x -= 10
                        self.idTextField.backgroundColor = #colorLiteral(red: 0.6928148866, green: 0.7800933719, blue: 0.9181832075, alpha: 1)
                        self.pwdTextField.backgroundColor = #colorLiteral(red: 0.6928148866, green: 0.7800933719, blue: 0.9181832075, alpha: 1)
                    })
                })
            })
        }
    }
    
    /************* view DidLoad *************/
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        topContraintHeight.constant = 800
        logoTopConstraintHeight.constant = 225
    }
    
    /************* keyboard event *************/
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
          self.view.endEditing(true)
    }
}

