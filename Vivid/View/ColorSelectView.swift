

import SwiftUI

struct ColorSelectView: View {
    

        @State private var isWhite = true
        
        @Binding var hexColor: String


        
        
        var body: some View {
            //ScrollView(.horizontal) {
                HStack{

                    Button {
                        
                        isWhite.toggle()
                        hexColor =  isWhite ? "#FFFFFF" : "#000000"
                    } label: {
                        Image(systemName: "pencil")
                            .foregroundColor(Color(hex: hexColor)) .font(.system(size: 37))
            
                    }
       
                }
            //}
            .padding()
            //.background(VisualEffectView(effect: UIBlurEffect(style: .dark)))
        }
    }

struct ColorSelectView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSelectView(hexColor: .constant("#ffffff"))
    }
}
