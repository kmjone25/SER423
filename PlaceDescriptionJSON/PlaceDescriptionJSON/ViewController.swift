//
//  ViewController.swift
//  PlaceDescriptionJSON
//
//  Created by Krystle Jones  on 3/20/17.
//  Copyright © 2017 Krystle Jones . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let myPlace = PlaceDescriptionJSON()
    //MARK: Attributes
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var dscrpt: UITextField!
    @IBOutlet weak var cat: UITextField!
    @IBOutlet weak var addTtl: UITextField!
    @IBOutlet weak var addDscrpt: UITextField!
    @IBOutlet weak var elev: UITextField!
    @IBOutlet weak var lat: UITextField!
    @IBOutlet weak var long: UITextField!
    @IBOutlet weak var outPut: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK: Actions
    
    @IBAction func submit(_ sender: UIButton) {
        myPlace.name = name.text!
        myPlace.dscrpt = dscrpt.text!
        myPlace.cat = cat.text!
        myPlace.addTtl = addTtl.text!
        myPlace.addDscrpt = addDscrpt.text!
        myPlace.elev = Double(elev.text ?? "") ?? 0.0
        myPlace.lat = Double(lat.text ?? "") ?? 0.0
        myPlace.long = Double(long.text ?? "") ?? 0.0
        outPut.text.append(myPlace.toJsonString())
        outPut.isEditable = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

