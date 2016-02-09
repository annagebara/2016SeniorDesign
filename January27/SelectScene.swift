//
//  SelectScene.swift
//  January27
//
//  Created by Anna Gebara on 1/30/16.
//  Copyright © 2016 Anna Gebara. All rights reserved.
//

import Foundation
import UIKit



class SelectScene : UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    @IBOutlet weak var pickerScene: UIPickerView!
    
    override func viewDidLoad() {
        SetUpPickerView();
        
      
        pickerScene.delegate = self;
        pickerScene.dataSource=self;
        
    }
    
var scenesName = [String]();
    func SetUpPickerView() {
        
        let scenes = Scenes.sharedInstance//Scenes()
        
        // var scenes: [Scenes.sceneInfo] = Scenes.returnScenes();
        //let k = scenes.returnScenes();
        
        
        for Scene in scenes.returnScenes(){
            scenesName.append(Scene.Name)
        }
        // pickerScene.
        //pickerScene.dataSource = scenesName;
        
    }
    
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return scenesName[row];
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return scenesName.count;
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1;
    }


}


