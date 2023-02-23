////
////  ViewRouter.swift
////  Vivid
////
////  Created by Jumanah  on 03/08/1444 AH.
////  Copyright © 1444 AH Vivid App. All rights reserved.
////
//
//import Foundation
//import SwiftUI
//
//class ViewRouter: ObservableObject {
//
//    init() {
//        if !UserDefaults.standard.bool(forKey: "didLaunchBefore") {
//            UserDefaults.standard.set(true, forKey: "didLaunchBefore")
//            currentPage = "onboardingView"
//        } else {
//            currentPage = "testhomw"
//        }
//    }
//    
//    @Published var currentPage: String
//    
//}
