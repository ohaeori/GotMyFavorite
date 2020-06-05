//
//  AddViewController.swift
//  Table
//
//  Created by andonggyun on 2020/06/04.
//  Copyright © 2020 COMP420. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
@IBOutlet var tfAddItem: UITextField!
    
override func viewDidLoad() {
super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnAddItem(_ sender: UIButton) {
        items.append(tfAddItem.text!)
        itemsImageFile.append("clock.png")
        tfAddItem.text=""
        _ = navigationController?.popViewController(animated: true)
    }


}
