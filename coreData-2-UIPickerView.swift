//
//  coreData-2-UIPickerView.swift
//  coreData-2-UIPickerView
//
//  Created by gokhan on 21/04/2015.
//  Copyright (c) 2015 gokhan. All rights reserved.
//

import Foundation
import CoreData

class coreData_2_UIPickerView: NSManagedObject {

    @NSManaged var name: String
    @NSManaged var surname: String

    
    class func create(moc: NSManagedObjectContext, name: String, surname: String) -> coreData_2_UIPickerView {
        let newData = NSEntityDescription.insertNewObjectForEntityForName("Data", inManagedObjectContext: moc) as! coreData_2_UIPickerView
        newData.name = name
        newData.surname = surname

        return newData
    }

}
