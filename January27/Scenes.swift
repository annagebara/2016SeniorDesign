//
//  Scenes.swift
//  January27
//
//  Created by Anna Gebara on 1/27/16.
//  Copyright © 2016 Anna Gebara. All rights reserved.
//

import UIKit

private let sharedScenesClass = Scenes()
class Scenes: NSObject {
    
    class var sharedInstance: Scenes {
        return sharedScenesClass
    }
    
    struct sceneInfo{
        //var lightIDs = [Lights.Light()];//Lights.Light]();
        var lightIDs: String;//comma seperated list
        var lightRGB: String;
        var Name: String;
        var Description: String;
    }
    
    var createdScenes = [sceneInfo]();
    
    func returnScenes()->[sceneInfo]
    {
        return createdScenes;
    }
    
    
    
    //private
    private override init(){
        //call to local storage to pull available scenes
        self.createdScenes = [
            sceneInfo( lightIDs:"123,321,111", lightRGB: "FFFFFF,FFFFFF,FFFFFF", Name:"Scene One", Description: "First Scene Made" ),
            sceneInfo( lightIDs:"123,321,111", lightRGB: "000000,000000,000000", Name:"Scene Two", Description: "Second Scene Made" ),
            sceneInfo( lightIDs:"123,321,111", lightRGB: "0F0F0F,0F0F0F,0F0F0F", Name:"Scene Three", Description: "Third Scene Made" )
        ];
    }
    
    func checkUniqueScene(Name: String)-> Bool{
        for Scene in self.createdScenes{
            if(Scene.Name==Name)
            {
                return false;
            }
        }
        return true;
    }
    
    func AddScene(Name: String, lightIds:String, lightRGB: String, Description: String)
    {
        self.createdScenes.append(sceneInfo(  lightIDs: lightIds,lightRGB: lightRGB, Name: Name, Description: Description));
        // Add scene to the local storage
    }
    
    
    //Is this a permanent removal??
    func RemoveScene(Name: String)
    {
        //Remove from local storage
        
        self.createdScenes = self.createdScenes.filter() {$0.Name != Name}
        
        /*if let itemToRemoveIndex = self.lightRepository.indexOf(Light( ID: ID, Name: Name, Description: Description, Active:false ,x: x, y: y)) {
        self.lightRepository.removeAtIndex(itemToRemoveIndex);
        }
        
        if let index = find(self.lightRepository, Light( ID: ID, Name: Name, Description: Description,Active:true , x: x, y: y))
        {
        self.lightRepository.removeAtIndex(index)
        }*/
    }
    
    func ModifyScene(Name: String, lightIds:String, lightRGB: String, Description: String)-> Bool{
        //After finding the Scene, overwrite the previous values
        for var Scene in self.createdScenes{
            if(Scene.Name==Name)
            {
                Scene.lightRGB=lightRGB;
                Scene.lightIDs=lightIds;
                return true;
            }
        }
        //Error with saving changes
        return false;
    }

    
    
    
}
