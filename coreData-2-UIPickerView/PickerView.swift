//
//  PickerView.swift
//  coreData-2-UIPickerView
//
//  Created by gokhan on 20/04/2015.
//  Copyright (c) 2015 gokhan. All rights reserved.
//
import Foundation
import UIKit
import CoreData
var data = [coreData_2_UIPickerView]()

let managedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext

class PickerView: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{

    @IBOutlet weak var pickerView: UIPickerView!
    
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        pickerView.dataSource = self
        pickerView.delegate = self
        fetchData()
        pickerView.reloadAllComponents()
        
    }

    
    
    
    func fetchData(){
        
        let fetchRequest = NSFetchRequest(entityName: "Data")
        if let fetchResults = managedObjectContext!.executeFetchRequest(fetchRequest, error: nil) as? [coreData_2_UIPickerView] {
            data = fetchResults
            
        }}
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //        let fetchRequest = NSFetchRequest(entityName: "Server")
        //
        //        if let fetchResults = self.managedObjectContext!.executeFetchRequest(fetchRequest, error: nil) as? [Server] {
        //
        //
        //        }
        self.fetchData()
        println(data.count)
        return data.count
        
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        
        let oneData = data[row]
      
        
        return (oneData.name)
        
    }
}

