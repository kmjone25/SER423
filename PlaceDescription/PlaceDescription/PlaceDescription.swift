//
//  PlaceDescription.swift
//  PlaceDescription
//
//  Created by Krystle Jones  on 3/17/17.
//  Copyright © 2017 Krystle Jones . All rights reserved.
//

import Foundation

class PlaceDescription{
    var name:String = " "
    var dscrpt:String = ""
    var cat:String = ""
    var addTtl:String = ""
    var addDscrpt:String = ""
    var elev:Double = 0.0
    var lat:Double = 0.0
    var long:Double = 0.0
    
    func getName()->String{
        return self.name
    }
    
    func setName(_name:String){
        self.name = _name
    }
    
    func getDscrpt()->String{
        return self.dscrpt
    }
    
    func setDscrpt(_dscrpt:String){
        self.dscrpt = _dscrpt
    }
    
    
    func getCat()->String{
        return self.cat
    }
    
    func setCat(_cat:String){
        self.cat = _cat
    }
    
    func getAddTtl()->String{
        return self.addTtl
    }
    
    func setAddTtl(_addTtl:String){
        self.addTtl = _addTtl
    }
    
    func getAddDscrpt()->String{
        return self.addDscrpt
    }
    
    func setAddDscrpt(_addDscrpt:String){
        self.addDscrpt = _addDscrpt
    }
    
    func getElev()->Double{
        return self.elev
    }
    
    func setElev(_elev:Double){
        self.elev = _elev
    }
    
    func getLong()->Double{
        return self.long
    }
    
    func setLong(_long:Double){
        if (_long <= 180.0 && _long >= -180.0){
            self.long = _long}
        else{
            self.long = 0.0
        }
    }
    
    func getLat()->Double{
        return self.lat
    }
    
    func setLat(_lat:Double){
        if (_lat <= 90.0 && _lat >= -90.0){
            self.lat = _lat}
        else{
            self.lat = 0.0
        }
    }
    
}

