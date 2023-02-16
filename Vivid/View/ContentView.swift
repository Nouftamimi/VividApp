

import SwiftUI

struct ContentView: View {
    
    @State var hexColor: String = "#FFFFFF"
    @StateObject private var vm = userViewModel()
    var body: some View {
        let arView = ARDrawViewContainer(hexColor: $hexColor)
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
                            .frame(width: 55, height: 150)
                            .cornerRadius(25)
                            .foregroundColor(Color("Nouf"))
                            .opacity(0.4)
                            .overlay(
                                
                                VStack {
                                    Button("Draw", action: {
                                        arView.arDrawView.clearAll()
                                    })
//                                    Image(systemName: "arrow.uturn.backward")
//                                        .font(.system(size: 37))
//                                        .foregroundColor(.white)
                                    Spacer().frame(height: 30)
                                    ColorSelectView(hexColor: $hexColor)
                                    
                                })
                            .padding()
                    }.padding(.top,50)
                       
                }
                    Spacer()
        
                    }
            
                   
                    
        }.onAppear{vm.addUser()}
        .ignoresSafeArea()
       
            }
 
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		ContentView()
    }
}
