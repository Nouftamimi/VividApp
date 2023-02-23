////
////  OnboardingScreenView.swift
////  Vivid
////
////  Created by Jumanah  on 03/08/1444 AH.
////  Copyright © 1444 AH Vivid App. All rights reserved.
////
//
//import SwiftUI
//
//struct OnboardingScreenView: View {
//    
//    
//    let manager : OnboardingContentManager
//    let handler : OnboardingGetStartedAction
//    
//    @State private var selected = 0
//    @State var isPresented = false
//    init(manager: OnboardingContentManager, handler: @escaping OnboardingGetStartedAction) {
//        self.manager = manager
//        self.handler = handler
//    }
//    
//    var body: some View {
//        NavigationStack{
//
//            TabView(selection: $selected) {
//                
//                ForEach(manager.items.indices, id: \.self ) { index in
//                    OnboardingView(item: manager.items[index],
//                                   limit: manager.limit,
//                                   index: $selected, handler: handler)
//                }
//            }
//            
//            
//            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
//            .onAppear() {
//                UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(Color("PrimarycolorBlue"))
//                UIPageControl.appearance().pageIndicatorTintColor = .gray
//                
//            }
//            .padding(.bottom,40)
//            .background(.white)
//            .ignoresSafeArea()
//        
//            
//        }.navigationBarBackButtonHidden(true)
//    }
//    struct OnboardingScreenView_Previews: PreviewProvider {
//        static var previews: some View {
//            OnboardingScreenView(manager: OnboardingContentManagerImpl()) {}
//        }
//    }
//}
//
