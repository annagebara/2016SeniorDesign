//
//  Lights.swift
//  January27
//
//  Created by Anna Gebara on 1/27/16.
//  Copyright © 2016 Anna Gebara. All rights reserved.
//

import UIKit
import Swift


private let sharedScenesClass = Lights()

class Lights: NSObject {
    
    
    class var sharedInstance: Lights {
        return sharedScenesClass
    }
    
    
    struct Light{
        var ID :Int;
        var Name: String;
        var Description: String;
        var Active: Bool;
        var x: Int?;
        var y: Int?;
    }
    
    var lightRepository = [Light]()

    //Lights class constructor
    override init(){
    //Call Local Storage to pull available Lights
        self.lightRepository = [
            Light( ID: 123, Name: "Light1", Description: "What is going on", Active:true, x: 10, y: 10),
            Light( ID: 321, Name: "Light2", Description: "LOL", Active:true, x: 20, y: 20),
            Light( ID: 111, Name: "Light2", Description: "LOL", Active:false, x:  nil , y: nil )
        ];
        
    }
    
    func ReturnLights()->[Light]{
    
        return lightRepository;
    
    }
    
    func checkUniqueLight(ID: Int)-> Bool{
        for Light in self.lightRepository{
            if(Light.ID==ID)
            {
                return false;
            }
        }
        return true;
    }
    
    func AddLight(ID: Int, Name: String, Description:String, Active:Bool,x:Int, y:Int)
    {
        self.lightRepository.append(Light( ID: ID, Name: Name, Description: Description, Active: false ,x: 0, y: 0));
        // Add light to the local storage
    }
    
    /*func ==(lhs: Light, rhs: Light) -> Bool {
    return lhs.hashValue == rhs.hashValue
    }*/
    
    
    //Is this a permanent removal??
    func RemoveLight(ID: Int, Name: String, Description:String, Active:Bool,x:Int, y:Int)
    {
        //Remove from local storage
        
        self.lightRepository = self.lightRepository.filter() {$0.ID != ID}
        
        /*if let itemToRemoveIndex = self.lightRepository.indexOf(Light( ID: ID, Name: Name, Description: Description, Active:false ,x: x, y: y)) {
            self.lightRepository.removeAtIndex(itemToRemoveIndex);
        }
     
        if let index = find(self.lightRepository, Light( ID: ID, Name: Name, Description: Description,Active:true , x: x, y: y))
        {
            self.lightRepository.removeAtIndex(index)
        }*/
    }
    
}
