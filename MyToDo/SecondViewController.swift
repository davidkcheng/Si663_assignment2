//
//  SecondViewController.swift
//  MyToDo
//
//  Created by David Cheng on 9/20/15.
//  Copyright © 2015 umsi663f15. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var txtTask: UITextField!
    @IBOutlet weak var txtDesc: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }// called when 'return' key pressed. return NO to ignore.
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func buttonAddTask(sender: UIButton) {
        taskMgr.addtask(txtTask.text!, desc: txtDesc.text!)
        self.view.endEditing(true)
        txtTask.text = ""
        txtDesc.text = ""
        self.tabBarController?.selectedIndex = 0
    }
}

