////
////  MotherView.swift
////  Vivid
////
////  Created by Jumanah  on 03/08/1444 AH.
////  Copyright © 1444 AH Vivid App. All rights reserved.
////
//
//import SwiftUI
//
//struct MotherView : View {
//    
//    @EnvironmentObject var viewRouter: ViewRouter
//    
//    var body: some View {
//        VStack {
//            if viewRouter.currentPage == "onboardingView" {
//                OnboardingScreenView(manager: OnboardingContentManagerImpl()) {}
//            } else if viewRouter.currentPage == "ContentView" {
//                ContentView()
//            }
//        }
//    }
//}
//
//struct MotherView_Previews: PreviewProvider {
//    static var previews: some View {
//        MotherView().environmentObject(ViewRouter())
//    }
//}
