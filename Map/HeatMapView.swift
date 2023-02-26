////
////  HeatMapView.swift
////  Vivid
////
////  Created by Jumanah  on 05/08/1444 AH.
////  Copyright © 1444 AH Vivid App. All rights reserved.
////
//
import SwiftUI

struct HeatMapView: View {
    @State var ispress : Bool = false
   
    var body: some View {
        ZStack{
            MapBoxMapView()
            VStack{
//                Button {
//                    ispress = true
//                } label: {
//
//                    Circle()
//                        .frame(width: 62, height: 62)
//                        .cornerRadius(25)
//                        .foregroundColor(Color("Nouf"))
//                        .opacity(0.4)
//
//
//                        .overlay(Image(systemName: "arrow.backward")
//                            .font(.system(size: 37))
//                            .foregroundColor(.red)
//                        )
//
//                } .fullScreenCover(isPresented: $ispress, content: ContentView.init)
                
            }.foregroundColor(.orange)
            
            
        }.ignoresSafeArea()
    }
}

struct HeatMapView_Previews: PreviewProvider {
    static var previews: some View {
        
        HeatMapView()
            .ignoresSafeArea()
    }
}
