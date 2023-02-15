

import SwiftUI
import ARKit

struct ARDrawViewContainer: UIViewRepresentable {
	
	@Binding var hexColor: String
	let arDrawView = ARDrawView(frame: .zero)
	
	func makeUIView(context: Context) -> ARDrawView {
		arDrawView
	}
	
	func updateUIView(_ uiView: ARDrawView, context: Context) {
		uiView.hexColor = hexColor
	}
	

}
