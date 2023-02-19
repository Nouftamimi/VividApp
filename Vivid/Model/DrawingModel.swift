//
//  DrawingModel.swift
//  Vivid
//
//  Created by Jumanah  on 24/07/1444 AH.
//  Copyright © 1444 AH Geonseok Lee. All rights reserved.
//
import Foundation
import CloudKit

struct drawingModel{
   
    
   
    
    
    
    let id: CKRecord.ID
    let userID : userModel
//    let path : pathgModel
    let TimeCreated : Date
    let DateCreated : Date
    let Location : CLLocation
    
    
    
    
    
    init (record:  CKRecord){
       self.id = record.recordID
        self.userID = record["userID"] as! userModel
        self.DateCreated = record["DateCreated"] as! Date
        self.TimeCreated = record["TimeCreated"] as! Date
//    self.path = record["Path"] as! pathgModel
        self.Location = record["Location"] as! CLLocation
        
        
        
    }
    
    
}

