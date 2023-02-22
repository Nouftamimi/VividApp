

import SwiftUI

struct ContentView: View {
    
    @State var hexColor: String = "#FFFFFF"
    @StateObject private var vm = userViewModel()
    @StateObject private var vmPath = PathViewModel()

    
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
                            Circle()
                                .frame(width: 62, height: 62)
                                .cornerRadius(25)
                                .foregroundColor(Color("Nouf"))
                                .opacity(0.4)

                                .overlay(Image(systemName: "globe.asia.australia")
                                    .font(.system(size: 37))
                                    .foregroundColor(.white))
                        }.padding()
                            Spacer()
                   
                        
                    VStack{
                        
                        Rectangle()
                            .frame(width: 55, height: 240)
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
//                                    Button("Draw", action: {
//                                        arView.arDrawView.clearAll()
//
//                                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                                            // your code here
//                                            arView.arDrawView.drawFromArray()
//                                        }
//
//
//                                    })
//                                    Image(systemName: "arrow.uturn.backward")
//                                        .font(.system(size: 37))
//                                        .foregroundColor(.white)
                                    Spacer().frame(height: 30)
                                    ColorSelectView(hexColor: $hexColor)
                                   
                                    
                                    Button {
//                                        vmPath.saveToCloudKit()
                                        vmPath.savePath(arView.arDrawView.drawingArray) {
                                            //
                                            arView.arDrawView.clearAll()
                                        }
                                    } label: {
                                        Image(systemName: "paperplane.fill")
                                            .font(.system(size: 32))
                                        //Text("Tap me!")
                                            .padding()
                                            .foregroundColor(.white)
                                            //.background(.red)
                                    }
//                                    Button {
// fetch data
//                                    } label: {
//                                        Image(systemName: "eye.fill")
//                                            .font(.system(size: 32))
//                                            .padding()
//                                            .foregroundColor(.white)
//                                    }
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
                fetchAllDrawing()
            }
        }
        .ignoresSafeArea()
       
            }
//        .onReceive(arView.arDrawView){
//            arView.arDrawView.drawFromArray()
//        }
 
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
