//
//  ViewController.swift
//  PlaceDescription
//
//  Created by Krystle Jones  on 3/17/17.
//  Copyright © 2017 Krystle Jones . All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITextFieldDelegate{
   
    // MARK: Properties
    @IBOutlet weak var Name: UITextField!
    @IBOutlet weak var Description: UITextField!
    @IBOutlet weak var Category: UITextField!
    @IBOutlet weak var AddressTitle: UITextField!
    @IBOutlet weak var AddressDescription: UITextField!
    @IBOutlet weak var Elevation: UITextField!
    @IBOutlet weak var Latitude: UITextField!
    @IBOutlet weak var Longitude: UITextField!
    @IBOutlet weak var DisplayText: UITextView!
  
    let myPlace = PlaceDescription()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
 
    // MARK: Actions
    @IBAction func OnClick(_ sender: UIButton) {
        DisplayText.text = ""
        myPlace.setName(_name: Name.text!)
        myPlace.setDscrpt(_dscrpt: Description.text!)
        myPlace.setCat(_cat: Category.text!)
        myPlace.setAddTtl(_addTtl: AddressTitle.text!)
        myPlace.setAddDscrpt(_addDscrpt: AddressDescription.text!)
        myPlace.setElev(_elev: Double(Elevation.text ?? "") ?? 0.0)
        myPlace.setLat(_lat: Double(Latitude.text ?? "") ?? 0.0)
        myPlace.setLong(_long: Double(Longitude.text ?? "") ?? 0.0)
        
        DisplayText.text.append("Name:\n")
        DisplayText.text.append(myPlace.getName())
        DisplayText.text.append("\nDescription:\n")
        DisplayText.text.append(myPlace.getDscrpt())
        DisplayText.text.append("\nCategory:\n")
        DisplayText.text.append(myPlace.getCat())
        DisplayText.text.append("\nAddress-Title:\n")
        DisplayText.text.append(myPlace.getAddTtl())
        DisplayText.text.append("\nAddress-Street:\n")
        DisplayText.text.append(myPlace.getAddDscrpt())
        DisplayText.text.append("\nElevation:\n")
        DisplayText.text.append(String(myPlace.getElev()))
        DisplayText.text.append("\nLatitude:\n")
        DisplayText.text.append(String(myPlace.getLat()))
        DisplayText.text.append("\nLongitude:\n")
        DisplayText.text.append(String(myPlace.getLong()))
        
        
    }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

