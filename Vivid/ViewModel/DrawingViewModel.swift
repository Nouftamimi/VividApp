//
//  DrawingViewModel.swift
//  Vivid
//
//  Created by Roa Moha on 01/08/1444 AH.
//  
//

import Foundation
import CloudKit
import SwiftUI

class DrawingViewModel : ObservableObject {
    
    @Published var user : [String] = []
    @StateObject private var vmCloud = CloudKitUserBootViewModel()
    init (){}
    
    func addUser () {
        
        let newUser = CKRecord(recordType: "Users")
        newUser["name"] = vmCloud.userName
        vmCloud.container.publicCloudDatabase.save(newUser){ record, error in
            guard  error  == nil else{
                print(error?.localizedDescription)
                return
            }
            
        }}
    
    
    
    
    
    
}
