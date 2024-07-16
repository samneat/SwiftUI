//
//  Landmark.swift
//  Landmarks
//
//  Created by Sam Neat on 16/07/2024.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Decodable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.longitude, longitude: coordinates.latitude)
    }
    
    struct Coordinates: Hashable, Decodable {
        var longitude: Double
        var latitude: Double
    }
}
