//
//  UserModel.swift
//  Vivid
//
//  Created by Jumanah  on 24/07/1444 AH.
//  Copyright © 1444 AH Geonseok Lee. All rights reserved.
//

import Foundation
import CloudKit
import SwiftUI

struct userModel {
    
    
   
    let ID : CKRecord.ID
    let name : String
    init (record:  CKRecord){
        self.ID = record.recordID
        self.name = record["name"] as? String ?? ""
        
        
    }
    
    
}

