//
//  AddScene.swift
//  January27
//
//  Created by Anna Gebara on 1/31/16.
//  Copyright © 2016 Anna Gebara. All rights reserved.
//

import Foundation
import UIKit

class AddScene : UIViewController{
    
    @IBOutlet weak var txtbxDescription: UITextField!
    
    @IBOutlet weak var txtboxName: UITextField!
    override func viewDidLoad() {
        
    }
    
    @IBAction func SaveScene(sender: AnyObject) {
        
        let scenes = Scenes.sharedInstance
        if(scenes.checkUniqueScene(txtboxName.text!)){
        scenes.AddScene(txtboxName.text! , lightIds: "123", lightRGB: "321",Description: txtbxDescription.text!);
            
            let Scenes = storyboard?.instantiateViewControllerWithIdentifier("SelectScene")
            presentViewController(Scenes!, animated: true, completion: nil)
        }
      // let vc = AddScene()
       /*
        self.presentViewController(vc as UIViewController, animated: true, completion: nil)
       */
        // self.presentViewController(, animated: true, completion: nil)
        
        
        
        //let vc : AnyObject! = self.storyboard.instantiateViewControllerWithIdentifier("AddScene");
        
        
     //   self.showViewController(vc as UIViewController, sender: vc)
    }
    
    
    
   /* override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let scenes = Scenes.sharedInstance
        scenes.AddScene(txtboxName.text! , lightIds: "123", lightRGB: "321",Description: txtbxDescription.text!);
    }*/
}
