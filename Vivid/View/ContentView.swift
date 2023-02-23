

import SwiftUI

struct ContentView: View {
    
    @State var hexColor: String = "#FFFFFF"
    @StateObject private var vm = userViewModel()
    @StateObject private var vmPath = DrawingViewModel()
    @State var ispressed : Bool = false
//    @ObservableObject var mapV = mapView()
    var body: some View {
        let arView = ARDrawViewContainer(hexColor: $hexColor)
       
        func fetchAllDrawing(){
            vmPath.fetchList { array in
                arView.arDrawView.drawFromArray(array)
            }
        }
        
        return ZStack {
                arView
                VStack {
                   HStack {
                        VStack{
                            
                         //   mapView().environmentObject(LocalSearchService())

                            Button {
                                ispressed = true
//                                mapView().environmentObject(LocalSearchService())

                            } label: {
                                Circle()
                                    .frame(width: 62, height: 62)
                                    .cornerRadius(25)
                                    .foregroundColor(Color("Nouf"))
                                    .opacity(0.4)
                                
                               
                                    .overlay(Image(systemName: "globe.asia.australia")
                                             
                                        .font(.system(size: 37))
                                        .foregroundColor(.white))
                                
                            } .padding(.top, -80)
                            //.fullScreenCover(isPresented: $ispressed, content: mapView.init)
                            
//                            Circle()
//                                .frame(width: 62, height: 62)
//                                .cornerRadius(25)
//                                .foregroundColor(Color("Nouf"))
//                                .opacity(0.4)
//
//                                .overlay(Image(systemName: "globe.asia.australia")
//                                    .font(.system(size: 37))
//                                    .foregroundColor(.white))
                        }.padding() .frame(width: 90)
                       Spacer()
                   
                        
                    VStack{
                        
                        Rectangle()
                            .frame(width: 50, height: 220)
                            .cornerRadius(25)
                            .foregroundColor(Color("Nouf"))
                            .opacity(0.4)
                            .overlay(
                               
                                VStack {
                                    
                                    Button {
                                        arView.arDrawView.clearAll()
                                    } label: {
                                        Image(systemName: "arrow.uturn.backward")
                                                                               .font(.system(size: 37))
                                                                               .foregroundColor(.white)
                                                                              
                                        
                                    }

                                   // Spacer()
                                    ColorSelectView(hexColor: $hexColor)
                                   
                                    
                                    Button {
                                        vmPath.savePath(arView.arDrawView.drawingArray) {
                                            //
                                            arView.arDrawView.clearAll()
                                        }
                                    } label: {
                                        Image(systemName: "paperplane.fill")
                                            .font(.system(size: 32))
                                            .foregroundColor(.white)
                                           
                                    }
                                    Button {
                                        fetchAllDrawing()
                                    } label: {
                                        Image(systemName: "eye.fill")
                                            .font(.system(size: 28))
                                            .foregroundColor(.white)
                                            .padding(.top, 10)
                                    }
                                })
                            .padding()
                    }.padding(.top,50)
                       
                }
                    Spacer()
        
                    }
                    
        }
        .onAppear{
            vm.addUser()
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                // your code here
//               fetchAllDrawing()
            }
        }
        .ignoresSafeArea()
       
            }

 
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
        //mapView().environmentObject(LocalSearchService())
    }
}
