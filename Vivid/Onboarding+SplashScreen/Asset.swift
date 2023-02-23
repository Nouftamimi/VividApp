////
////  Asset.swift
////  Vivid
////
////  Created by Jumanah  on 03/08/1444 AH.
////  Copyright © 1444 AH Vivid App. All rights reserved.
////
//
//import Foundation
//import SwiftUI
//
//enum AssetType {
//    case sfSymbol
//    case xcasset
//}
//
//struct Asset {
//    let name: String
//    let type: AssetType
//}
//
//extension Asset {
//    @ViewBuilder
//    var content : some View {
//        
//        switch type {
//        case .sfSymbol :
//            
//            Image(systemName: name)
//                .padding(.bottom,50)
//                .font(.system(size:120 , weight: .bold))
//            
//        case .xcasset:
//            
//            VStack {
//                Spacer()
//                
//                Image(name)
//                    .resizable()
//                    .aspectRatio( contentMode: .fit)
//                    
////                  .frame(width:390, height: 500)
////                    .padding(.top, 10)
//            }
//        }
//    }
//}
//
//
