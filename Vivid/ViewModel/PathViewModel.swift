//
//  PathViewModel.swift
//  Vivid
//
//  Created by Roa Moha on 01/08/1444 AH.
//  
//

import Foundation
import CloudKit
import SwiftUI

class DrawingViewModel : ObservableObject {


    @StateObject private var vmCloud = CloudKitUserBootViewModel()
    @StateObject private var vmDarwing = DrawingViewModel()
    let arDrawView = ARDrawView(frame: .zero)
    init (){}



    func test(_ age: Int){

    }

    func fetchList(_ completion: @escaping (_ array: [Data])->Void ){




        let predicate = NSPredicate(value: true)
        let query = CKQuery(recordType: "Drawing", predicate: predicate)

        vmCloud.container.publicCloudDatabase.perform(query, inZoneWith: nil) { (records, error) in
            if let error = error {
                print("Error fetching records: \(error)")
            } else if let records = records {
                for record in records {

                    guard let drawingBytes = record.object(forKey: "compressedDrawingBytes") as? Data else{return}

                    if let arrayOfData = try? NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(drawingBytes) as? [Data]{

                        print("arrayOfData \(arrayOfData)")
                        completion(arrayOfData)
                    }



                }
            }
        }


    }

    func savePath(_ drawingArray: [Data], completion: @escaping ()->Void) {


        if drawingArray.isEmpty {
            print("drawingArray is empty, nothing to save")
            return
        }


        guard let dataToUpload = try? NSKeyedArchiver.archivedData(withRootObject: drawingArray, requiringSecureCoding: true) as Data else{
           return
        }

        let pathRecord = CKRecord(recordType: "Drawing")
        pathRecord["compressedDrawingBytes"] = dataToUpload


//        let assetArray = DrawingArray.filter { data in
////            let maxSize: Int = 1024 * 1024 // 1 MB
////            let count = data.count
////            if count > maxSize {
////                return true
////            }
////            return false
//            return true
//        }






        vmCloud.container.publicCloudDatabase.save(pathRecord) { (record, error) in
            if let error = error {
                print("Error saving to CloudKit: \(error.localizedDescription)")
            } else {
                print("Saved to CloudKit!")
                completion()
            }
        }










    }






}
