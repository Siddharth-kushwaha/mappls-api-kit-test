// The Swift Programming Language
// https://docs.swift.org/swift-book

import MapplsAPIKit
class MapplsApiKitDemo: NSObject {
    
    func getDirections() {
        let source = Waypoint(coordinate: CLLocationCoordinate2D(latitude: 28.98, longitude: 77.38))
        let destination = Waypoint(coordinate: CLLocationCoordinate2D(latitude: 28.32, longitude: 78.243))
        
        let routeOptions = RouteOptions(waypoints: [source, destination])
        Directions().calculate(routeOptions) { waypoints, routes, error in
            
        }
    }
}
