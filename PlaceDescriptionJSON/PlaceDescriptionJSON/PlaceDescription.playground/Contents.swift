//: Playground - noun: a place where people can play

import UIKit

class PlaceDescription {
    var name:String
    var dscrpt:String
    var cat:String
    var addTtl:String
    var addDscrpt:String
    var elev:Double
    var lat:Double
    var long:Double
    init(){
        self.name = ""
        self.dscrpt = ""
        self.cat = ""
        self.addTtl = ""
        self.addDscrpt = ""
        self.elev = 0.0
        self.lat = 0.0
        self.long = 0.0
    }
    init (jsonStr: String){
        self.name = ""
        self.dscrpt = ""
        self.cat = ""
        self.addTtl = ""
        self.addDscrpt = ""
        self.elev = 0.0
        self.lat = 0.0
        self.long = 0.0
        
        if let data: Data = jsonStr.data(using: String.Encoding.utf8){
            do{
                let dict = try JSONSerialization.jsonObject(with: data,options:.mutableContainers) as?[String:Any]
                self.name = (dict!["name"] as? String)!
                self.dscrpt = (dict!["description"] as? String)!
                self.cat = (dict!["category"] as? String)!
                self.addTtl = (dict!["address-title"] as? String)!
                self.addDscrpt = (dict!["address-street"] as? String)!
                self.elev = (dict!["elevation"] as? Double)!
                self.lat = (dict!["latitude"] as? Double)!
                self.long = (dict!["longitude"] as? Double)!
                
            } catch {
                print("unable to convert to dictionary")
                
            }
        }
    }
    
    func toJsonString() -> String {
        var jsonStr = "";
        let dict:[String:Any] = ["name": name, "description": dscrpt, "category": cat, "address-title": addTtl, "address-street": addDscrpt,
                                 "elevation": elev, "latitude": lat, "longitude": long  ] as [String : Any]
        do {
            let jsonData:Data = try JSONSerialization.data(withJSONObject: dict, options: JSONSerialization.WritingOptions.prettyPrinted)
            // here "jsonData" is the dictionary encoded in JSON data
            jsonStr = NSString(data: jsonData, encoding: String.Encoding.utf8.rawValue)! as String
        } catch let error as NSError {
            print(error)
        }
        return jsonStr
    }
    
    
    //Accessor Mutators... Not necessary with JSON
    
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

/*
 INSTRUCTORS JSON EXAMPLE
let myPlace:PlaceDescription = PlaceDescription(jsonStr: "{\"name\":\"ASU-Poly\",\"description\":\"Home of ASU's Software Engineering Programs\",\"category\":\"School\",\"address-title\":\"ASU Software Engineering\",\"address-street\":\"7171 E Sonoran Arroyo Mall Peralta Hall 230 Mesa AZ 85212\",\"elevation\":1300.0,\"latitude\":33.306388,\"longitude\":-111.679121}")
 */

