////
////  OnboardingView.swift
////  Vivid
////
////  Created by Jumanah  on 03/08/1444 AH.
////  Copyright © 1444 AH Vivid App. All rights reserved.
////
//
//import SwiftUI
//
//struct OnboardingView: View {
//    
//    @State private var isPresented = false
//    @State private var pageIndex = 0
//    private let pages: [Page] = Page.samplePages
//    private let dotAppearance = UIPageControl.appearance()
//    
//   
//    var body: some View {
//        
//        TabView(selection: $pageIndex) {
//            ForEach(pages) { page in
//                VStack {
//                    HStack{
//                        Spacer()
//                        Button("Skip") {
//                                   isPresented.toggle()
//                               }
//                               .fullScreenCover(isPresented: $isPresented, content: ContentView.init)
////                            Button("Skip", action: incrementPage)
//                      
//                                .padding()
//                    }
//                    
//                    PageView(page: page)
//                    
//                }
//                .tag(page.tag)
//            }
//        }
//        .animation(.easeInOut, value: pageIndex)
//        .tabViewStyle(.page)
//        .indexViewStyle(.page(backgroundDisplayMode: .interactive))
//        .onAppear {
//            dotAppearance.currentPageIndicatorTintColor = .blue
//            dotAppearance.pageIndicatorTintColor = .gray
//        }
//    }
//    
//    func incrementPage() {
//        pageIndex += 1
//    }
//    
//    func goToZero() {
//        pageIndex = 0
//    }
//    
//}
//   
//
//struct OnboardingView_Previews: PreviewProvider {
//    static var previews: some View {
//        OnboardingView()
//    }
//}
