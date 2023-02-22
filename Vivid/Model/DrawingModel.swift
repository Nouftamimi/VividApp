//
//  DrawingModel.swift
//  Vivid
//
//  Created by Roa  on 24/07/1444 AH.
//  
//

import Foundation
import CloudKit

struct drawingModel{
   
    
   
    
    
    
    let id: CKRecord.ID
    let  userId : String
    var pathId : [String] = []
    let timeCreated : Date
    let dateCreated : Date
    let location : CLLocation
    let  drawingId: String
    
   
    init (record:  CKRecord){
        self.id = record.recordID
        self.userId = record[" userId"] as? String ?? ""
        self.pathId = record["pathId"] as? [String] ?? ["", "", ""]
        self.timeCreated = record["timeCreated"] as! Date
        self.dateCreated = record["dateCreated"] as! Date
        self.location = record["location"] as! CLLocation
        self.drawingId = record["drawingId"]as? String ?? ""
        
        
    }
    
    
}

