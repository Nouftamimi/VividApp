//
//  OnboardingView.swift
//  Vivid
//
//  Created by Jumanah  on 03/08/1444 AH.
//  Copyright © 1444 AH Vivid App. All rights reserved.
//

//import SwiftUI
//
//typealias OnboardingGetStartedAction = () -> Void
//
//struct OnboardingView: View {
//    
//    @Environment(\.presentationMode) private var presentationMode
//    
//    let item : OnboardingItem
//    
//    let limit: Int
//    let handler : OnboardingGetStartedAction
//    @Binding var index: Int
//    @State var isPresented : Bool = false
//    internal init (item: OnboardingItem,
//                   limit:Int ,
//                   index:Binding<Int>, handler: @escaping OnboardingGetStartedAction) {
//        self.item = item
//        self.limit = limit
//        self._index = index
//        self.handler = handler
//    }
//    
//    
//    
//    var body: some View {
//        NavigationStack{
//           VStack {
////
////                Button(action: {presentationMode.wrappedValue.dismiss()
////                    handler()}) { NavigationLink(destination: ContentView()){
////                        Text("Let's start")}
////                    .font(Font.custom("Geeza Pro Bold", size: 25))
////
//////                    .frame(width: 100, height: 50)
//////                    .cornerRadius(8)
//////                    .padding(.top,80)
////                    .opacity(index == limit ? 1:0)
////                    .allowsTightening(index == limit)
////                    }
//                
//               ZStack{
//                  
//                   
//                   item.asset?.content
//                 
//                       Button("Skip") {
//                           
//                           isPresented = true
//                       }
//                       .fullScreenCover(isPresented: $isPresented, content: ContentView.init)
//                       .padding(.bottom,680)
//                       .padding(.leading, 320)
//               }
////                Text(item.title ?? "")
////                    .font(Font.custom("Geeza Pro Bold",size: 18))
////                    .multilineTextAlignment(.center)
////                    .padding(.bottom,12)
////                    .padding(.horizontal,30)
////                    .foregroundColor(.black)
////
////                Text(item.content ?? "")
////                    .font(Font.custom("Geeza Pro Regular",size: 14))
////                    .multilineTextAlignment(.center)
////                    .padding(.horizontal,30)
////                    .foregroundColor(.gray)
//                
//                
//                
//            }
//        }.navigationBarBackButtonHidden(true)
//    }
//}
//struct OnboardingView_Previews: PreviewProvider {
//    static var previews: some View {
//        OnboardingView(item: OnboardingItem(title: "Dummy", content: "Dummy Content" ),
//                       limit: 0,
//                       index: .constant(0)) { }
//    }
//}
