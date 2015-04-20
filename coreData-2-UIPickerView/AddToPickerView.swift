//
//  AddToPickerView.swift
//  coreData-2-UIPickerView
//
//  Created by gokhan on 21/04/2015.
//  Copyright (c) 2015 gokhan. All rights reserved.
//

import UIKit
import CoreData

class AddToPickerView: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var surName: UITextField!
    
    @IBAction func addToCoreDataButton(sender: AnyObject) {
        saveToCoreData(name.text, surname: surName.text)
        
    }
    let managedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext;
    
    func saveToCoreData(name:String, surname:String) {
        
        var newData = coreData_2_UIPickerView.create(self.managedObjectContext!, name: name, surname: surname)
        
    }
    
}
