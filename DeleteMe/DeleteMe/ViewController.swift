//
//  ViewController.swift
//  DeleteMe
//
//  Created by Krystle Jones  on 3/17/17.
//  Copyright © 2017 Krystle Jones . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clickMeGotClicked(_ sender: Any) {
        myTF.text = "Ouch!!"
    }
    


}

