//
//  LightRepository.swift
//  January27
//
//  Created by Anna Gebara on 2/9/16.
//  Copyright © 2016 Anna Gebara. All rights reserved.
//

import Foundation
import UIKit


class LightRepository : UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    @IBOutlet weak var lightPicker: UIPickerView!
    
    
    
    override func viewDidLoad() {
        SetUpPickerView();
        
        
        lightPicker.delegate = self;
        lightPicker.dataSource=self;
        
    }
    
    var lightsName = [String]();
    func SetUpPickerView() {
        
        let lights = Lights.sharedInstance//Scenes()
        
        // var scenes: [Scenes.sceneInfo] = Scenes.returnScenes();
        //let k = scenes.returnScenes();
        
        
        for light in lights.ReturnLights(){
            lightsName.append(light.Name)
        }
        // pickerScene.
        //pickerScene.dataSource = scenesName;
        
    }
    
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return lightsName[row];
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return lightsName.count;
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1;
    }
    
}
