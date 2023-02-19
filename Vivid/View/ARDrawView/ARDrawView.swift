

import ARKit
import SwiftUI
//import MultipeerConnectivity

class ARDrawView: ARSCNView {
    
    //var multipeerSession: MultipeerSession?
    var hexColor: String = ""
    var drawingArray = [Data]()
    
    
    override init(frame: CGRect, options: [String : Any]? = nil) {
        super.init(frame: frame, options: options)
        let config = ARWorldTrackingConfiguration()
        session.run(config)
        delegate = self
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let point = touches.first?.location(in: self) else { return }
        addLineAnchor(point: point)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let point = touches.first?.location(in: self) else { return }
        addLineAnchor(point: point)
    }

    private func addLineAnchor(point: CGPoint) {
        let point3D = self.unprojectPoint(SCNVector3(point.x, point.y, 0.997))
        let node = SCNNode()
        node.position = point3D
        let anchor = ARAnchor(name: hexColor, transform: node.simdWorldTransform)
        session.add(anchor: anchor)
        //sendToMultipeers(anchor)
        
        if let data = try? NSKeyedArchiver.archivedData(withRootObject: anchor, requiringSecureCoding: true) as Data {
            drawingArray.append(data)
        }
        
        
    }
    
    func clearAll(){
        let anc = session.currentFrame?.anchors ?? []
        for anchor in anc {
            session.remove(anchor: anchor)
        }
    }
    
    func drawFromArray(){
        for item in drawingArray {
            if let anchor = try? NSKeyedUnarchiver.unarchivedObject(ofClass: ARAnchor.self, from: item){
                session.add(anchor: anchor)
            }
        }
    }
    
    private func createLine(name: String) -> SCNNode {
        let sphere = SCNSphere(radius: 0.005)
        sphere.firstMaterial?.diffuse.contents = UIColor.hexStringToUIColor(hex: name)
        let node = SCNNode(geometry: sphere)
        return node
    }
    

}

extension ARDrawView: ARSCNViewDelegate {
    func renderer(_ renderer: SCNSceneRenderer, didAdd node: SCNNode, for anchor: ARAnchor) {
        if let name = anchor.name, name.hasPrefix("#") {
            node.addChildNode(createLine(name: name))
        }
    }
}
