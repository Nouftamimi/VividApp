//
//  VividHeatmap.swift
//  Vivid
//
//  Created by Jumanah  on 05/08/1444 AH.
//  Copyright © 1444 AH Vivid App. All rights reserved.
//

//import SwiftUI
//import MapboxMaps
//
//struct MapBoxMapView: UIViewControllerRepresentable {
//     
//    func makeUIViewController(context: Context) -> MapViewController {
//           return MapViewController()
//       }
//      
//    func updateUIViewController(_ uiViewController: MapViewController, context: Context) {
//    }
//}
//
//
//class MapViewController: UIViewController {
//   internal var mapView: MapView!
//
//   override public func viewDidLoad() {
//       super.viewDidLoad()
//       let myResourceOptions = ResourceOptions(accessToken: "pk.eyJ1Ijoibm91ZjMyMyIsImEiOiJjbGVnNHd1dGkwMDEwM29xZnI4bmprdzhuIn0.hSSjd1yzOsKrwixUzdJjSQ")
//       let cameraOptions = CameraOptions(center: CLLocationCoordinate2D(latitude: 40.83647410051574, longitude: 14.30582273457794), zoom: 4.5)
//       let myMapInitOptions = MapInitOptions(resourceOptions: myResourceOptions, cameraOptions: cameraOptions, styleURI: StyleURI.dark)
//       mapView = MapView(frame: view.bounds, mapInitOptions: myMapInitOptions)
//       mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//       self.view.addSubview(mapView)
//       
//       mapView.location.delegate = self
//       mapView.location.options.activityType = .other
//       mapView.location.options.puckType = .puck2D()
//       mapView.location.locationProvider.startUpdatingLocation()
//
//          mapView.mapboxMap.onNext(.mapLoaded) { [self]_ in
//              self.locationUpdate(newLocation: mapView.location.latestLocation!)
//          }
//       }
//       }
//
//       extension MapViewController: LocationPermissionsDelegate, LocationConsumer {
//       func locationUpdate(newLocation: Location) {
//       mapView.camera.fly(to: CameraOptions(center: newLocation.coordinate, zoom: 14.0), duration: 5.0)
//       }
//       }
